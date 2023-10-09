import 'package:freezed_annotation/freezed_annotation.dart';

part 'second_state.freezed.dart';

@freezed
class SecondState with _$SecondState {
  const factory SecondState({
    required String title,
  }) = _SecondState;
}
