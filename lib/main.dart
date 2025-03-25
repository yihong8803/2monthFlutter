import 'package:flutter/material.dart';
import 'package:two_month_flutter/Day4_Provider/userProvider.dart';
import 'package:two_month_flutter/Day5_Theme/themeProvider.dart';
import 'package:two_month_flutter/route_generator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            initialRoute: '/',
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.generateRoute,
            theme: Provider.of<ThemeProvider>(context).themeData,
          );
        },
      ),
    );
  }
}
