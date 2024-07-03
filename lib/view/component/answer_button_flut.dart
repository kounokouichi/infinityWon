import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinity_won/view_model/answer.dart';

// 答え合わせ画面と解答画面は同じウィジェットを使う
class AnswerButtonFlut extends ConsumerWidget {
  const AnswerButtonFlut(
    this.questionNumber,
    this.number,
    this.isCheck, {
    super.key,
  });
  // 問題番号
  final int questionNumber;
  // 解答/正解番号
  final int number;
  // 答え合わせの時true
  final bool isCheck;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var answers = ref.watch(answersProvider);
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      width: 300,
      height: 52,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: number == answers[questionNumber].answerNumber
              ? Colors.green
              : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            side: BorderSide(
              color: !isCheck
                  ? Colors.grey
                  : (number == answers[questionNumber].correctNumber)
                      ? (number == answers[questionNumber].answerNumber)
                          ? Colors.blue
                          : Colors.red
                      : Colors.grey,
              width: 2,
            ),
          ),
        ),
        onPressed: () {
          if (isCheck) {
            // 答え合わせの時
            ref
                .watch(answersProvider.notifier)
                .setCorrectAnswer(questionNumber, number);
          } else {
            // 問題解答時
            ref
                .watch(answersProvider.notifier)
                .setAnswer(questionNumber, number);
          }
        },
        child: Text("$number"),
      ),
    );
  }
}
