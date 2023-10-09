import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    required String title,
    @Default(false) bool isLoading,
  }) = _HomeState;
}
