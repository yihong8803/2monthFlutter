import 'package:flutter/material.dart';
import 'package:two_month_flutter/circle.dart';
import 'package:two_month_flutter/square.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/1': (_) => FirstPage(),
        '/2': (_) => SecondPage(
              data: "abc",
            )
      },
    );
  }
}

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

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "This",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.w100),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/2');
                  },
                  child: Text("Go to the next")),
            ],
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  final String data;

  const SecondPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data,
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.w100),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => FirstPage(),
                      ),
                    );
                  },
                  child: Text("Go to the back")),
            ],
          ),
        ));
  }
}
