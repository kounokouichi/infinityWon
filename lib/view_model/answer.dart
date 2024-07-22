import 'package:infinity_won/model/test_answer_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

// 解答と正解両方の状態を管理する
@freezed
class Answer with _$Answer {
  factory Answer({
    // 問題ID
    required int testId,
    // 問題回数(第一回、第二回...)
    required int testCount,
    // 問題番号(1~問題数分)
    required int questionNumber,
    // 解答番号(1~4)
    required int answerNumber,
    // 解答ステータス(1,2,3)
    required int status,
    // 解答時間
    required int answerTime,
    // 正解番号
    required int correctNumber,
  }) = _Answer;
}

@riverpod
class Answers extends _$Answers {
  @override
  List<Answer> build() {
    return [];
  }

  void create(int testId, int testCount, int count) {
    for (var i = 0; i < count; i++) {
      state = [
        ...state,
        Answer(
          testId: testId,
          testCount: testCount,
          questionNumber: i,
          answerNumber: 0,
          correctNumber: 0,
          status: 0,
          answerTime: 0,
        )
      ];
    }
  }

  // 解答をProviderに登録する
  void setAnswer(int number, int answerNumber) {
    state = [
      for (final answer in state)
        if (answer.questionNumber == number)
          answer.copyWith(
            answerNumber: answerNumber,
            status: 1,
          )
        else
          answer,
    ];
  }

  // 正解をProviderに登録する
  void setCorrectAnswer(int number, int correctNumber) {
    state = [
      for (final answer in state)
        if (answer.questionNumber == number)
          answer.copyWith(
            correctNumber: correctNumber,
            status: 1,
          )
        else
          answer,
    ];
  }

  // 解答内容をDBに登録する
  Future<void> registerAnswer() async {
    await TestAnswerModel.createAllItem(state);
  }
}
