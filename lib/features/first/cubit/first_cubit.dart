import 'package:async_project/features/first/cubit/first_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstCubit extends Cubit<FirstState> {
  FirstCubit()
      : super(
          const FirstState(title: 'First Screen'),
        );

  void onButtonPressed() {
    emit(
      state.copyWith(buttonTitle: 'To second pressed'),
    );
  }
}
