import 'package:async_project/features/home/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(
          const HomeState(title: 'Home Screen'),
        );

  Future<void> onButtonPressed() async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(
      const Duration(seconds: 3),
      () => emit(
        state.copyWith(title: 'Home Changed Title'),
      ),
    );
    emit(state.copyWith(isLoading: false));
  }
}
