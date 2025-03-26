import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:two_month_flutter/Day6_Animation/lottieAnimation.dart';
import 'package:two_month_flutter/Day6_Animation/lottieAnimation2.dart';

class ImplicitAnimation2 extends StatefulWidget {
  const ImplicitAnimation2({super.key});

  @override
  State<ImplicitAnimation2> createState() => _ImplicitAnimation2State();
}

class _ImplicitAnimation2State extends State<ImplicitAnimation2>
    with TickerProviderStateMixin {
  bool isExpanded = false;
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedText"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LottieAnimation(),
                  ),
                );
              },
              icon: Icon(Icons.next_plan)),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: AnimatedDefaultTextStyle(
              child: Text("Yihong"),
              style: selected
                  ? TextStyle(
                      fontSize: 30,
                      color: Theme.of(context).colorScheme.onPrimary)
                  : TextStyle(
                      fontSize: 60,
                      color: Theme.of(context).colorScheme.onSecondary),
              duration: Duration(seconds: 1)),
        ),
      ),
    );
  }
}
