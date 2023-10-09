import 'package:async_project/features/first/cubit/first_cubit.dart';
import 'package:async_project/features/second/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScreen extends StatefulWidget {
  static const routeName = 'firstScreen';

  const FirstScreen({super.key});

  @override
  State<StatefulWidget> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  FirstCubit get bloc => context.read<FirstCubit>();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<FirstCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(state.title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  bloc.onButtonPressed();
                  Navigator.of(context).pushNamed(SecondScreen.routeName);
                },
                child: Text(state.buttonTitle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
