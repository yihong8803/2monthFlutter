import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String child;
  final String desc;
  final String navigate;
  const MySquare(
      {super.key,
      required this.child,
      required this.navigate,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 8.0),
        margin: const EdgeInsets.all(10.0),
        height: 130,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.deepPurple[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            //Image
            Container(
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("assets/img/pic$navigate.png"),
                      fit: BoxFit.cover)),
              width: 100,
              height: 100,
            ),

            Column(
              children: [
                //Title
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 20),
                  width: 120,
                  height: 25,
                  child: Text(
                    child,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),

                //Text
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  width: 120,
                  child: Text(
                    desc,
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),

            //Play Button
            Container(
                margin: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/$navigate');
                    },
                    child: Text("Play"))),
          ],
        ));
  }
}
