import 'package:flutter/material.dart';
import 'package:two_month_flutter/Navigation/day1_navigation.dart';
import 'package:two_month_flutter/circle.dart';
import 'package:two_month_flutter/home.dart';
import 'package:two_month_flutter/square.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/1':
            return MaterialPageRoute(builder: (_) => FirstPage());
          case '/2':
            return MaterialPageRoute(builder: (_) => SecondPage(data: "abc"));
          default:
            return MaterialPageRoute(builder: (_) => HomePage());
        }
      },
    );
  }
}
