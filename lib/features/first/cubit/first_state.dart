import 'package:freezed_annotation/freezed_annotation.dart';

part 'first_state.freezed.dart';

@freezed
class FirstState with _$FirstState {
  const factory FirstState({
    required String title,
    @Default('To second') String buttonTitle,
  }) = _FirstState;
}
