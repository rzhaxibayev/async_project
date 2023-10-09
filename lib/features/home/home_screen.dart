import 'package:async_project/features/first/first_screen.dart';
import 'package:async_project/features/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'homeScreen';

  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeCubit get bloc => context.read<HomeCubit>();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HomeCubit>().state;

    return Scaffold(
      appBar: AppBar(
        title: Text(state.title),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  await bloc.onButtonPressed();
                  _onTapped();
                },
                child: state.isLoading
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(
                          color: Colors.blueAccent,
                        ),
                      )
                    : const Text('To First'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapped() {
    Navigator.of(context).pushNamed(FirstScreen.routeName);
  }
}
