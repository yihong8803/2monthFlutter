import 'package:flutter/material.dart';
import 'package:two_month_flutter/circle.dart';
import 'package:two_month_flutter/square.dart';

class HomePage extends StatelessWidget {
  final List _posts = [
    'First Page',
    'Second Page',
    'post 3',
    'post 3',
    'post 3',
    'post 3'
  ];

  final List _stories = [
    'story 1',
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
                    return MyCircle(child: _stories[index]);
                  }),
            ),

            //Instagram post
            Expanded(
              child: ListView.builder(
                  itemCount: _posts.length,
                  itemBuilder: ((context, index) {
                    return MySquare(
                      navigate: (index + 1).toString(),
                      child: _posts[index],
                    );
                  })),
            ),
          ],
        ));
  }
}
