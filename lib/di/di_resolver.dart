import 'package:async_project/common/helper.dart';
import 'package:async_project/features/first/cubit/first_cubit.dart';
import 'package:async_project/features/home/cubit/home_cubit.dart';
import 'package:async_project/features/second/cubit/second_cubit.dart';
import 'package:get_it/get_it.dart';

class DiResolver {
  static final _di = GetIt.instance;

  static Future<void> register() async {
    _di.registerLazySingleton(() => Helper());
    _registerCubits();
  }

  static void _registerCubits() {
    _di.registerFactory(() => HomeCubit());
    _di.registerFactory(() => FirstCubit(helper: _di.get<Helper>()));
    _di.registerFactory(() => SecondCubit());
  }
}
