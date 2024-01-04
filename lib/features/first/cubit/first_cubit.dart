import 'package:async_project/common/helper.dart';
import 'package:async_project/features/first/cubit/first_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstCubit extends Cubit<FirstState> {
  final Helper _helper;

  FirstCubit({
    required Helper helper,
  })  : _helper = helper,
        super(
          const FirstState(title: 'First Screen'),
        );

  void onButtonPressed() {
    _helper.printX('Ura');
    emit(
      state.copyWith(buttonTitle: 'To second pressed'),
    );
  }
}
