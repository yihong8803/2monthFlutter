import 'package:flutter/material.dart';
import 'package:two_month_flutter/HomePage/circle.dart';
import 'package:two_month_flutter/HomePage/square.dart';

class HomePage extends StatelessWidget {
  final List _posts = ['Day 1:', 'Day 2:', 'Day 3', 'Day 4', 'Day 5', 'Day 6'];

  final List _descs = [
    'Navigation',
    'State Management',
    'TextField',
    'Provider',
    'Theme, Dark Mode',
    'Animation',
    
  ];

  final List _stories = [
    'To Do List',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Column(
          children: [
            //Instagram Story
            Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _stories.length,
                  itemBuilder: (context, index) {
                    return MyCircle(
                        navigate: (index + 1).toString(),
                        child: _stories[index]);
                  }),
            ),

            //Instagram post
            Expanded(
              child: ListView.builder(
                  itemCount: _posts.length,
                  itemBuilder: ((context, index) {
                    return MySquare(
                      navigate: (index + 1).toString(),
                      desc: _descs[index],
                      child: _posts[index],
                    );
                  })),
            ),
          ],
        ));
  }
}
