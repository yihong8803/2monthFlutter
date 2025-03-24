import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_month_flutter/ToDoList/color.dart';
import 'package:two_month_flutter/ToDoList/toDoList_cubit.dart';

class SquareWeek extends StatelessWidget {
  final int increase;
  const SquareWeek({super.key, required this.increase});

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now().add(Duration(days: increase));
    int currentDay = currentDate.day;
    int currentWeekDay = currentDate.weekday;

    String getCurrentWeek(int currentWeekDay) {
      switch (currentWeekDay) {
        case 1:
          return "Mon";
        case 2:
          return "Tue";
        case 3:
          return "Wed";
        case 4:
          return "Thu";
        case 5:
          return "Fri";
        case 6:
          return "Sat";
        case 7:
          return "Sun";
        default:
          return "Ero";
      }
    }

    String dayOfWeek = getCurrentWeek(currentWeekDay);

    return Container(
      width: 50,
      height: 50,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          //Display Day
          Container(
            margin: EdgeInsets.only(top: 5),
            height: 22,
            child: Text(
              "$currentDay",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: primaryColor),
            ),
          ),
          //Display Month
          BlocBuilder<MonthCubit, String>(builder: (context, month) {
            return Container(child: Text("$dayOfWeek"));
          })
        ],
      ),
    );
  }
}
