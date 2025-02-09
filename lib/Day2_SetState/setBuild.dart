import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:two_month_flutter/Day2_SetState/counterPage.dart';

class setState2 extends StatefulWidget {
  const setState2({super.key});

  @override
  State<setState2> createState() => _setState2State();
}

class _setState2State extends State<setState2> {
  int _counter = 0;
  String _imagePath = "assets/img/cxk1.png";

  AudioPlayer? _player;

  @override
  void dispose() {
    _player?.dispose();
    super.dispose();
  }

  void _play() {
    _player?.dispose();
    final player = _player = AudioPlayer();
    player.play(AssetSource('cxk_sound1.mp3'));
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: ((context, setState) => Scaffold(
              appBar: AppBar(
                title: Text("Stateful Builder"),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => CounterPage(),
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
                  //Image
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_imagePath == "assets/img/cxk1.png") {
                          _imagePath = "assets/img/cxk2.png";
                        } else {
                          _imagePath = "assets/img/cxk1.png";
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(_imagePath),
                              fit: BoxFit.cover)),
                      width: 200,
                      height: 200,
                    ),
                  ),

                  //Counter
                  Text('$_counter',
                      style: TextStyle(color: Colors.black, fontSize: 50)),
                ],
              )),
              floatingActionButton: FloatingActionButton(
                  //Compress the setState function inside statfulBuilder
                  onPressed: () {
                    _play(); // Correct function call
                    setState(() {
                      _counter++;
                      if (_imagePath == "assets/img/cxk1.png") {
                        _imagePath = "assets/img/cxk2.png";
                      } else {
                        _imagePath = "assets/img/cxk1.png";
                      }
                    });
                  },
                  child: Icon(Icons.add)),
            )));
  }
}
