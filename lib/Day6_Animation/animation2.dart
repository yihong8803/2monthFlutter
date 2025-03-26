import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:two_month_flutter/Day6_Animation/lottieAnimation.dart';
import 'package:two_month_flutter/Day6_Animation/lottieAnimation2.dart';
import 'dart:math';

class ImplicitAnimation2 extends StatefulWidget {
  const ImplicitAnimation2({super.key});

  @override
  State<ImplicitAnimation2> createState() => _ImplicitAnimation2State();
}

class _ImplicitAnimation2State extends State<ImplicitAnimation2>
    with TickerProviderStateMixin {
  final AudioPlayer _player = AudioPlayer();
  late final AnimationController _controller = AnimationController(
    //vsync only available with TickerProviderStateMixin
    vsync: this,
    duration: const Duration(seconds: 10),
  )..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
    _player.dispose();
  }

  void _play() async {
    await _player.setSource(AssetSource('sounds/look at my eyes.mp3'));
    _player.seek(Duration.zero);
    _player.resume();
  }

  bool selected = false;
  double opacityLevel = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text, Builder, Opacity"),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Changing Opacity of Flutter Logo
            GestureDetector(
              onTap: () {
                setState(() {
                  _play();
                  opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
                });
              },
              child: AnimatedOpacity(
                opacity: opacityLevel,
                duration: Duration(seconds: 2),
                child:
                    Image.asset("assets/img/nerd.jpg", width: 300, height: 300),
              ),
            ),

            //Rotating Flutter Logo
            AnimatedBuilder(
                animation: _controller,
                child: Image.asset("assets/img/ghost.png",
                    width: 100, height: 100),
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                      angle: _controller.value * 2.0 * pi, child: child);
                }),
            GestureDetector(
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
          ],
        ),
      ),
    );
  }
}
