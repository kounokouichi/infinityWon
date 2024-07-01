import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_answer.freezed.dart';
part 'check_answer.g.dart';

@freezed
class CheckAnswer with _$CheckAnswer {
  factory CheckAnswer({
    // 問題番号
    required int number,
    // 解答番号
    required int correctNumber,
  }) = _CheckAnswer;
}

@riverpod
class CheckAnswers extends _$CheckAnswers {
  @override
  List<CheckAnswer> build() {
    return [];
  }

  void create(int count) {
    for (var i = 0; i < count; i++) {
      state = [
        ...state,
        CheckAnswer(
          number: i,
          correctNumber: 0,
        )
      ];
    }
  }

  void check(int number, int correctNumber) {
    state = [
      for (final answer in state)
        if (answer.number == number)
          answer.copyWith(correctNumber: correctNumber)
        else
          answer,
    ];
  }
}
