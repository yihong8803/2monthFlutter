import 'package:flutter/material.dart';
import 'package:two_month_flutter/day2_setBuild.dart';

class StateWid extends StatefulWidget {
  const StateWid({super.key});

  @override
  State<StateWid> createState() => _StateWidState();
}

class _StateWidState extends State<StateWid> {
  int _counter = 0;

  void _incrementCounter() {
    //Cons: Have to define 2 seperate classes for setState and pressing
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Widget"),
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
          onPressed: _incrementCounter, child: Icon(Icons.add)),
    );
  }
}
