//Responsible for UI
//Use Bloc Builder

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_month_flutter/Day2_SetState/counter_cubit.dart';
import 'package:two_month_flutter/HomePage/home.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BloC Builder"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              icon: Icon(Icons.next_plan)),
        ],
      ),
      body: BlocBuilder<CounterCubit, int>(builder: (context, state) {
        return Center(
            child: Text(state.toString(), style: TextStyle(fontSize: 50)));
      }),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //Increment Button
          FloatingActionButton(
              heroTag: 'increment',
              onPressed: () => context.read<CounterCubit>().increment(),
              child: Icon(Icons.add)),
          SizedBox(height: 30),
          //Decrement Button
          FloatingActionButton(
              heroTag: 'decrement',
              onPressed: () => context.read<CounterCubit>().decrement(),
              child: Icon(Icons.remove)),
        ],
      ),
    );
  }
}
