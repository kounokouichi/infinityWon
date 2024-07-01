import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinity_won/view_model/answer.dart';

class AnswerButtonFlut extends ConsumerWidget {
  const AnswerButtonFlut(
    this.questionNumber,
    this.answerNumber,
    this.isCheck, {
    super.key,
  });
  final int questionNumber;
  final int answerNumber;
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
          backgroundColor: isCheck ? Colors.grey : null,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            side: BorderSide(
              color: answerNumber == answers[questionNumber].answerNumber
                  ? Colors.deepOrange
                  : Colors.blueAccent,
              width: 2,
            ),
          ),
        ),
        onPressed: () {
          ref
              .watch(answersProvider.notifier)
              .toggle(questionNumber, answerNumber);
        },
        child: Text("$answerNumber"),
      ),
    );
  }
}
