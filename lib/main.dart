import 'dart:async';

import 'package:async_project/common/app_router.dart';
import 'package:async_project/di/di_resolver.dart';
import 'package:async_project/features/home/cubit/home_cubit.dart';
import 'package:async_project/features/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> main() async {
  await DiResolver.register();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Template app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRouter.initialRoute,
      onGenerateRoute: AppRouter.generateRoute,
      home: BlocProvider(
        create: (_) => GetIt.instance.get<HomeCubit>(),
        child: const HomeScreen(),
      ),
    );
  }
}
