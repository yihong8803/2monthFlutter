import 'package:flutter/material.dart';
import 'package:two_month_flutter/Day1_Navigation/day1_navigation.dart';
import 'package:two_month_flutter/HomePage/home.dart';
import 'package:two_month_flutter/Day2_SetState/setState.dart';
import 'package:two_month_flutter/toDoList.dart';
import 'package:two_month_flutter/toDoListPage.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/1':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case '/2':
        return MaterialPageRoute(builder: (_) => setState1());
      case '!1':
        return MaterialPageRoute(builder: (_) => ToDoListPage());

      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
