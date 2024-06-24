// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get questionCount => throw _privateConstructorUsedError;
  int get testCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestInfoCopyWith<TestInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestInfoCopyWith<$Res> {
  factory $TestInfoCopyWith(TestInfo value, $Res Function(TestInfo) then) =
      _$TestInfoCopyWithImpl<$Res, TestInfo>;
  @useResult
  $Res call({int id, String name, int type, int questionCount, int testCount});
}

/// @nodoc
class _$TestInfoCopyWithImpl<$Res, $Val extends TestInfo>
    implements $TestInfoCopyWith<$Res> {
  _$TestInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? questionCount = null,
    Object? testCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      questionCount: null == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int,
      testCount: null == testCount
          ? _value.testCount
          : testCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestInfoImplCopyWith<$Res>
    implements $TestInfoCopyWith<$Res> {
  factory _$$TestInfoImplCopyWith(
          _$TestInfoImpl value, $Res Function(_$TestInfoImpl) then) =
      __$$TestInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int type, int questionCount, int testCount});
}

/// @nodoc
class __$$TestInfoImplCopyWithImpl<$Res>
    extends _$TestInfoCopyWithImpl<$Res, _$TestInfoImpl>
    implements _$$TestInfoImplCopyWith<$Res> {
  __$$TestInfoImplCopyWithImpl(
      _$TestInfoImpl _value, $Res Function(_$TestInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? questionCount = null,
    Object? testCount = null,
  }) {
    return _then(_$TestInfoImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      null == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == testCount
          ? _value.testCount
          : testCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TestInfoImpl implements _TestInfo {
  const _$TestInfoImpl(
      this.id, this.name, this.type, this.questionCount, this.testCount);

  @override
  final int id;
  @override
  final String name;
  @override
  final int type;
  @override
  final int questionCount;
  @override
  final int testCount;

  @override
  String toString() {
    return 'TestInfo(id: $id, name: $name, type: $type, questionCount: $questionCount, testCount: $testCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.questionCount, questionCount) ||
                other.questionCount == questionCount) &&
            (identical(other.testCount, testCount) ||
                other.testCount == testCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, type, questionCount, testCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestInfoImplCopyWith<_$TestInfoImpl> get copyWith =>
      __$$TestInfoImplCopyWithImpl<_$TestInfoImpl>(this, _$identity);
}

abstract class _TestInfo implements TestInfo {
  const factory _TestInfo(final int id, final String name, final int type,
      final int questionCount, final int testCount) = _$TestInfoImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  int get type;
  @override
  int get questionCount;
  @override
  int get testCount;
  @override
  @JsonKey(ignore: true)
  _$$TestInfoImplCopyWith<_$TestInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
