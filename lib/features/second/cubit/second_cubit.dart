import 'package:async_project/features/second/cubit/second_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondCubit extends Cubit<SecondState> {
  SecondCubit()
      : super(
          const SecondState(title: 'Second Screen'),
        );

  void onButtonPressed() {}
}
