// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckAnswer {
// 問題番号
  int get number => throw _privateConstructorUsedError; // 解答番号
  int get correctNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckAnswerCopyWith<CheckAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAnswerCopyWith<$Res> {
  factory $CheckAnswerCopyWith(
          CheckAnswer value, $Res Function(CheckAnswer) then) =
      _$CheckAnswerCopyWithImpl<$Res, CheckAnswer>;
  @useResult
  $Res call({int number, int correctNumber});
}

/// @nodoc
class _$CheckAnswerCopyWithImpl<$Res, $Val extends CheckAnswer>
    implements $CheckAnswerCopyWith<$Res> {
  _$CheckAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? correctNumber = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      correctNumber: null == correctNumber
          ? _value.correctNumber
          : correctNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckAnswerImplCopyWith<$Res>
    implements $CheckAnswerCopyWith<$Res> {
  factory _$$CheckAnswerImplCopyWith(
          _$CheckAnswerImpl value, $Res Function(_$CheckAnswerImpl) then) =
      __$$CheckAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, int correctNumber});
}

/// @nodoc
class __$$CheckAnswerImplCopyWithImpl<$Res>
    extends _$CheckAnswerCopyWithImpl<$Res, _$CheckAnswerImpl>
    implements _$$CheckAnswerImplCopyWith<$Res> {
  __$$CheckAnswerImplCopyWithImpl(
      _$CheckAnswerImpl _value, $Res Function(_$CheckAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? correctNumber = null,
  }) {
    return _then(_$CheckAnswerImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      correctNumber: null == correctNumber
          ? _value.correctNumber
          : correctNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CheckAnswerImpl implements _CheckAnswer {
  _$CheckAnswerImpl({required this.number, required this.correctNumber});

// 問題番号
  @override
  final int number;
// 解答番号
  @override
  final int correctNumber;

  @override
  String toString() {
    return 'CheckAnswer(number: $number, correctNumber: $correctNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAnswerImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.correctNumber, correctNumber) ||
                other.correctNumber == correctNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, correctNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckAnswerImplCopyWith<_$CheckAnswerImpl> get copyWith =>
      __$$CheckAnswerImplCopyWithImpl<_$CheckAnswerImpl>(this, _$identity);
}

abstract class _CheckAnswer implements CheckAnswer {
  factory _CheckAnswer(
      {required final int number,
      required final int correctNumber}) = _$CheckAnswerImpl;

  @override // 問題番号
  int get number;
  @override // 解答番号
  int get correctNumber;
  @override
  @JsonKey(ignore: true)
  _$$CheckAnswerImplCopyWith<_$CheckAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
