import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:two_month_flutter/Day6_Animation/animation2.dart';
import 'package:two_month_flutter/Day6_Animation/lottieAnimation.dart';
import 'package:two_month_flutter/Day6_Animation/lottieAnimation2.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({super.key});

  @override
  State<ImplicitAnimation> createState() => _ImplicitAnimationState();
}

class _ImplicitAnimationState extends State<ImplicitAnimation>
    with TickerProviderStateMixin {
  bool isExpanded = true;
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Size, Positioned & Align"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ImplicitAnimation2(),
                  ),
                );
              },
              icon: Icon(Icons.next_plan)),
        ],
      ),
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          //AnimatedSize Image
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: AnimatedSize(
                duration: Duration(seconds: 1),
                child: Container(
                  width: isExpanded ? 300 : 600,
                  child: Image.asset(
                    "assets/img/pic6.png",
                    fit: BoxFit.cover,
                  ),
                )),
          ),

          //AnimatedPosition Yellow Bar
          //AnimatedAlign
          //Animates the alignment of a widget inside a Container or Stack.
          //AnimatedPositioned
          //Animates the top, bottom, left, right properties inside a Stack.
          //Requires the parent to be a Stack, which means it only works with absolute positioning.
          Stack(
            children: [
              AnimatedPositioned(
                  width: selected ? 50 : 300,
                  height: selected ? 200 : 430,
                  top: selected ? 250 : 150,
                  left: selected ? 40 : 40,
                  duration: Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(25))),
                  ))
            ],
          ),
        ],
      )),
    );
  }
}
