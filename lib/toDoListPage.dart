//Platform connecting cubit and UI

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_month_flutter/toDoList.dart';
import 'package:two_month_flutter/toDoList_cubit.dart';

class ToDoListPage extends StatelessWidget {
  const ToDoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    //Bloc Provider
    return BlocProvider(
      create: (context) => MonthCubit(),
      child: BlocListener<MonthCubit, String>(
        listener: (context, state) {},
        //ToDoList (UI)
        child: const ToDoList(),
      ),
    );
  }
}
