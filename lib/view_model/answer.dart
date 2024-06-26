import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@freezed
class Answer with _$Answer {
  factory Answer({
    // 問題番号
    required int number,
    // 解答番号
    required int answerNumber,
    // 解答ステータス
    required int status,
    // 解答時間
    required int seconds,
  }) = _Answer;
}

@riverpod
class Answers extends _$Answers {
  @override
  List<Answer> build() {
    return [];
  }

  void create(int count) {
    for (var i = 0; i < count; i++) {
      state = [
        ...state,
        Answer(
          number: i,
          answerNumber: 0,
          status: 0,
          seconds: 0,
        )
      ];
    }
  }

  void toggle(int number, int answerNumber) {
    state = [
      for (final answer in state)
        if (answer.number == number)
          answer.copyWith(
            answerNumber: answerNumber,
            status: 1,
          )
        else
          answer,
    ];
  }
}
