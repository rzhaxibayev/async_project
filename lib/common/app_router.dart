import 'package:async_project/features/first/cubit/first_cubit.dart';
import 'package:async_project/features/first/first_screen.dart';
import 'package:async_project/features/home/cubit/home_cubit.dart';
import 'package:async_project/features/home/home_screen.dart';
import 'package:async_project/features/second/cubit/second_cubit.dart';
import 'package:async_project/features/second/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AppRouter {
  static const initialRoute = '/';

  static final _di = GetIt.instance;

  static Route<Object?>? generateRoute(RouteSettings settings) {
    final routeName = settings.name;

    switch (routeName) {
      case '/':
      case HomeScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (_) => _di.get<HomeCubit>(),
            child: const HomeScreen(),
          ),
          settings: settings,
        );
      case FirstScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (_) => _di.get<FirstCubit>(),
            child: const FirstScreen(),
          ),
          settings: settings,
        );
      case SecondScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (_) => _di.get<SecondCubit>(),
            child: const SecondScreen(),
          ),
          settings: settings,
        );
    }

    return null;
  }
}
