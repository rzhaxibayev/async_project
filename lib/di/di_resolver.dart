import 'package:async_project/features/first/cubit/first_cubit.dart';
import 'package:async_project/features/home/cubit/home_cubit.dart';
import 'package:async_project/features/second/cubit/second_cubit.dart';
import 'package:get_it/get_it.dart';

class DiResolver {
  static final _di = GetIt.instance;

  static Future<void> register() async {
    _registerCubits();
  }

  static void _registerCubits() {
    _di.registerFactory(() => HomeCubit());
    _di.registerFactory(() => FirstCubit());
    _di.registerFactory(() => SecondCubit());
  }
}
