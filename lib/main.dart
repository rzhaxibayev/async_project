import 'dart:async';

import 'package:async_project/common/app_router.dart';
import 'package:async_project/di/di_resolver.dart';
import 'package:async_project/features/home/cubit/home_cubit.dart';
import 'package:async_project/features/home/home_screen.dart';
import 'package:async_project/widgets/label.dart';
import 'package:async_project/widgets/label2.dart';
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
      title: 'Flutter Demo',
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  StreamController<String> controller = StreamController<String>.broadcast();

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                  ),
                  onChanged: (value) => controller.add(value),
                ),
              ),
              const SizedBox(height: 16),
              Label(stream: controller.stream),
              Label2(stream: controller.stream),
            ],
          ),
        ),
      ),
    );
  }
}
