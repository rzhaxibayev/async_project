// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'second_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SecondState {
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecondStateCopyWith<SecondState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecondStateCopyWith<$Res> {
  factory $SecondStateCopyWith(
          SecondState value, $Res Function(SecondState) then) =
      _$SecondStateCopyWithImpl<$Res, SecondState>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$SecondStateCopyWithImpl<$Res, $Val extends SecondState>
    implements $SecondStateCopyWith<$Res> {
  _$SecondStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SecondStateCopyWith<$Res>
    implements $SecondStateCopyWith<$Res> {
  factory _$$_SecondStateCopyWith(
          _$_SecondState value, $Res Function(_$_SecondState) then) =
      __$$_SecondStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_SecondStateCopyWithImpl<$Res>
    extends _$SecondStateCopyWithImpl<$Res, _$_SecondState>
    implements _$$_SecondStateCopyWith<$Res> {
  __$$_SecondStateCopyWithImpl(
      _$_SecondState _value, $Res Function(_$_SecondState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_SecondState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SecondState implements _SecondState {
  const _$_SecondState({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'SecondState(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecondState &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecondStateCopyWith<_$_SecondState> get copyWith =>
      __$$_SecondStateCopyWithImpl<_$_SecondState>(this, _$identity);
}

abstract class _SecondState implements SecondState {
  const factory _SecondState({required final String title}) = _$_SecondState;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_SecondStateCopyWith<_$_SecondState> get copyWith =>
      throw _privateConstructorUsedError;
}
