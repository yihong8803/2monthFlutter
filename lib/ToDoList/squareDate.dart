import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_month_flutter/ToDoList/color.dart';
import 'package:two_month_flutter/ToDoList/toDoList_cubit.dart';

class SquareDate extends StatelessWidget {
  const SquareDate({super.key});

  @override
  Widget build(BuildContext context) {
    int currentDay = DateTime.now().day;

    return Column(
      children: [
        //Display Day
        Container(
          margin: EdgeInsets.only(top: 5),
          height: 22,
          child: Text(
            "$currentDay",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: primaryColor),
          ),
        ),
        //Display Month
        BlocBuilder<MonthCubit, String>(builder: (context, month) {
          return Container(child: Text("$month".substring(0, 3)));
        })
      ],
    );
  }
}
