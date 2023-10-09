// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'first_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirstState {
  String get title => throw _privateConstructorUsedError;
  String get buttonTitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirstStateCopyWith<FirstState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstStateCopyWith<$Res> {
  factory $FirstStateCopyWith(
          FirstState value, $Res Function(FirstState) then) =
      _$FirstStateCopyWithImpl<$Res, FirstState>;
  @useResult
  $Res call({String title, String buttonTitle});
}

/// @nodoc
class _$FirstStateCopyWithImpl<$Res, $Val extends FirstState>
    implements $FirstStateCopyWith<$Res> {
  _$FirstStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? buttonTitle = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      buttonTitle: null == buttonTitle
          ? _value.buttonTitle
          : buttonTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirstStateCopyWith<$Res>
    implements $FirstStateCopyWith<$Res> {
  factory _$$_FirstStateCopyWith(
          _$_FirstState value, $Res Function(_$_FirstState) then) =
      __$$_FirstStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String buttonTitle});
}

/// @nodoc
class __$$_FirstStateCopyWithImpl<$Res>
    extends _$FirstStateCopyWithImpl<$Res, _$_FirstState>
    implements _$$_FirstStateCopyWith<$Res> {
  __$$_FirstStateCopyWithImpl(
      _$_FirstState _value, $Res Function(_$_FirstState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? buttonTitle = null,
  }) {
    return _then(_$_FirstState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      buttonTitle: null == buttonTitle
          ? _value.buttonTitle
          : buttonTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirstState implements _FirstState {
  const _$_FirstState({required this.title, this.buttonTitle = 'To second'});

  @override
  final String title;
  @override
  @JsonKey()
  final String buttonTitle;

  @override
  String toString() {
    return 'FirstState(title: $title, buttonTitle: $buttonTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.buttonTitle, buttonTitle) ||
                other.buttonTitle == buttonTitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, buttonTitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirstStateCopyWith<_$_FirstState> get copyWith =>
      __$$_FirstStateCopyWithImpl<_$_FirstState>(this, _$identity);
}

abstract class _FirstState implements FirstState {
  const factory _FirstState(
      {required final String title, final String buttonTitle}) = _$_FirstState;

  @override
  String get title;
  @override
  String get buttonTitle;
  @override
  @JsonKey(ignore: true)
  _$$_FirstStateCopyWith<_$_FirstState> get copyWith =>
      throw _privateConstructorUsedError;
}
