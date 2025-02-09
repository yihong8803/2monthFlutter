import 'package:flutter/material.dart';

class setState2 extends StatefulWidget {
  const setState2({super.key});

  @override
  State<setState2> createState() => _setState2State();
}

class _setState2State extends State<setState2> {
  int _counter = 0;

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
                            builder: (context) => setState2(),
                          ),
                        );
                      },
                      icon: Icon(Icons.next_plan)),
                ],
              ),
              body: Center(
                  child: Text('$_counter',
                      style: TextStyle(color: Colors.black, fontSize: 50))),
              floatingActionButton: FloatingActionButton(
                //Compress the setState function inside statfulBuilder
                  onPressed: () => setState(() => _counter++),
                  child: Icon(Icons.add)),
            )));
  }
}
