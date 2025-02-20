import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  final String child;

  const MyCircle({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
          child: Center(child: Text(child)),
        ));
  }
}
