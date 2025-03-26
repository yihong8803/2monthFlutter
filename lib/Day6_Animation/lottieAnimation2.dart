import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:two_month_flutter/HomePage/home.dart';

class LottieAnimation2 extends StatefulWidget {
  const LottieAnimation2({super.key});

  @override
  State<LottieAnimation2> createState() => _LottieAnimation2State();
}

class _LottieAnimation2State extends State<LottieAnimation2> with SingleTickerProviderStateMixin{
  late final AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  bool bookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie Bookmark"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              icon: Icon(Icons.next_plan)),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            if(bookmarked==false){
              bookmarked = true;
              _controller.forward();
            }else{
              bookmarked = false;
              _controller.reverse();
            }
          },
          child: Lottie.asset("assets/lotties/bookmarkLottie.json",
          controller: _controller,
          ),
        ),
        
      ),
    );
  }
}
