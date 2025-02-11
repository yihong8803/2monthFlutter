import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  final String child;
  final String navigate;

  const MyCircle({super.key, required this.child, required this.navigate});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('!$navigate');
          },
          child: Container(
            height: 100,
            width: 100,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
            child: Center(child: Text(child)),
          ),
        ));
  }
}
