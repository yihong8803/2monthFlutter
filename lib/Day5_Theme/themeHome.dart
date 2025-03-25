import 'package:flutter/material.dart';
import 'package:two_month_flutter/Day5_Theme/themeBox.dart';
import 'package:two_month_flutter/Day5_Theme/themeButton.dart';
import 'package:provider/provider.dart';
import 'package:two_month_flutter/Day5_Theme/themeProvider.dart';

class ThemeHome extends StatelessWidget {
  const ThemeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: ThemeBox(
              color: Theme.of(context).colorScheme.primary,
              child: ThemeButton(
                color: Theme.of(context).colorScheme.secondary,
                onTap: () {
                  Provider.of<ThemeProvider>(context, listen: false)
                      .toggleTheme();
                },
              )),
        ));
  }
}
