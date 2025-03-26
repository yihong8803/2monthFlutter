import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:two_month_flutter/Day6_Animation/lottieAnimation2.dart';

class LottieAnimation extends StatefulWidget {
  const LottieAnimation({super.key});

  @override
  State<LottieAnimation> createState() => _LottieAnimationState();
}

class _LottieAnimationState extends State<LottieAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie Delivery"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LottieAnimation2(),
                  ),
                );
              },
              icon: Icon(Icons.next_plan)),
        ],
      ),
      body: Center(
        child: Lottie.asset("assets/lotties/deliveryLottie.json"),
      ),
    );
  }
}
