// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Answer {
// 問題ID
  int get testId => throw _privateConstructorUsedError; // 問題回数(第一回、第二回...)
  int get testCount => throw _privateConstructorUsedError; // 問題番号(1~問題数分)
  int get questionNumber => throw _privateConstructorUsedError; // 解答番号(1~4)
  int get answerNumber => throw _privateConstructorUsedError; // 解答ステータス(1,2,3)
  int get status => throw _privateConstructorUsedError; // 解答時間
  int get answerTime => throw _privateConstructorUsedError; // 正解番号
  int get correctNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res, Answer>;
  @useResult
  $Res call(
      {int testId,
      int testCount,
      int questionNumber,
      int answerNumber,
      int status,
      int answerTime,
      int correctNumber});
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res, $Val extends Answer>
    implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testId = null,
    Object? testCount = null,
    Object? questionNumber = null,
    Object? answerNumber = null,
    Object? status = null,
    Object? answerTime = null,
    Object? correctNumber = null,
  }) {
    return _then(_value.copyWith(
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as int,
      testCount: null == testCount
          ? _value.testCount
          : testCount // ignore: cast_nullable_to_non_nullable
              as int,
      questionNumber: null == questionNumber
          ? _value.questionNumber
          : questionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      answerNumber: null == answerNumber
          ? _value.answerNumber
          : answerNumber // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      answerTime: null == answerTime
          ? _value.answerTime
          : answerTime // ignore: cast_nullable_to_non_nullable
              as int,
      correctNumber: null == correctNumber
          ? _value.correctNumber
          : correctNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnswerImplCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$$AnswerImplCopyWith(
          _$AnswerImpl value, $Res Function(_$AnswerImpl) then) =
      __$$AnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int testId,
      int testCount,
      int questionNumber,
      int answerNumber,
      int status,
      int answerTime,
      int correctNumber});
}

/// @nodoc
class __$$AnswerImplCopyWithImpl<$Res>
    extends _$AnswerCopyWithImpl<$Res, _$AnswerImpl>
    implements _$$AnswerImplCopyWith<$Res> {
  __$$AnswerImplCopyWithImpl(
      _$AnswerImpl _value, $Res Function(_$AnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testId = null,
    Object? testCount = null,
    Object? questionNumber = null,
    Object? answerNumber = null,
    Object? status = null,
    Object? answerTime = null,
    Object? correctNumber = null,
  }) {
    return _then(_$AnswerImpl(
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as int,
      testCount: null == testCount
          ? _value.testCount
          : testCount // ignore: cast_nullable_to_non_nullable
              as int,
      questionNumber: null == questionNumber
          ? _value.questionNumber
          : questionNumber // ignore: cast_nullable_to_non_nullable
              as int,
      answerNumber: null == answerNumber
          ? _value.answerNumber
          : answerNumber // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      answerTime: null == answerTime
          ? _value.answerTime
          : answerTime // ignore: cast_nullable_to_non_nullable
              as int,
      correctNumber: null == correctNumber
          ? _value.correctNumber
          : correctNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AnswerImpl implements _Answer {
  _$AnswerImpl(
      {required this.testId,
      required this.testCount,
      required this.questionNumber,
      required this.answerNumber,
      required this.status,
      required this.answerTime,
      required this.correctNumber});

// 問題ID
  @override
  final int testId;
// 問題回数(第一回、第二回...)
  @override
  final int testCount;
// 問題番号(1~問題数分)
  @override
  final int questionNumber;
// 解答番号(1~4)
  @override
  final int answerNumber;
// 解答ステータス(1,2,3)
  @override
  final int status;
// 解答時間
  @override
  final int answerTime;
// 正解番号
  @override
  final int correctNumber;

  @override
  String toString() {
    return 'Answer(testId: $testId, testCount: $testCount, questionNumber: $questionNumber, answerNumber: $answerNumber, status: $status, answerTime: $answerTime, correctNumber: $correctNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerImpl &&
            (identical(other.testId, testId) || other.testId == testId) &&
            (identical(other.testCount, testCount) ||
                other.testCount == testCount) &&
            (identical(other.questionNumber, questionNumber) ||
                other.questionNumber == questionNumber) &&
            (identical(other.answerNumber, answerNumber) ||
                other.answerNumber == answerNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.answerTime, answerTime) ||
                other.answerTime == answerTime) &&
            (identical(other.correctNumber, correctNumber) ||
                other.correctNumber == correctNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, testId, testCount,
      questionNumber, answerNumber, status, answerTime, correctNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      __$$AnswerImplCopyWithImpl<_$AnswerImpl>(this, _$identity);
}

abstract class _Answer implements Answer {
  factory _Answer(
      {required final int testId,
      required final int testCount,
      required final int questionNumber,
      required final int answerNumber,
      required final int status,
      required final int answerTime,
      required final int correctNumber}) = _$AnswerImpl;

  @override // 問題ID
  int get testId;
  @override // 問題回数(第一回、第二回...)
  int get testCount;
  @override // 問題番号(1~問題数分)
  int get questionNumber;
  @override // 解答番号(1~4)
  int get answerNumber;
  @override // 解答ステータス(1,2,3)
  int get status;
  @override // 解答時間
  int get answerTime;
  @override // 正解番号
  int get correctNumber;
  @override
  @JsonKey(ignore: true)
  _$$AnswerImplCopyWith<_$AnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
