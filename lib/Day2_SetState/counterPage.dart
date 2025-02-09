//Platform connecting cubit and UI

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_month_flutter/Day2_SetState/counterView.dart';
import 'counter_cubit.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Bloc Provider
    return BlocProvider(
      create: (context) => CounterCubit(0),
      child: BlocListener<CounterCubit, int>(
        listener: (context, state) {
          if (state == 10) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                content: Text("10 reached!"),
              ),
            );
          }
        },
        //CounterView (UI)
        child: const CounterView(),
      ),
    );
  }
}
