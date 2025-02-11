import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_month_flutter/color.dart';
import 'package:two_month_flutter/squareWeek.dart';
import 'package:two_month_flutter/task.dart';
import 'package:two_month_flutter/toDoList_cubit.dart';
import 'package:two_month_flutter/squareDate.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    int currentMonth = DateTime.now().month;

    final List _taskName = [
      'Navigation',
      'State Management',
      'do homework',
      'gym exercise',
      'flutter ',
      'debate',
      'lalat king',
      'zei bi',
      'beimuyu',
      'music'
    ];

    final List _taskTime = [
      '9:00 AM',
      '12:00 PM',
      '1:00 PM',
      '4:20 PM',
      '2:30 PM',
      '1:40 PM',
      '4:12 PM',
      '9:50 PM',
      '2:10 PM',
      '8:00 PM',
    ];

    final AudioPlayer _player = AudioPlayer();

    void _play() async {
      await _player.setSource(AssetSource('sounds/cxk_sound1.mp3'));
      _player.seek(Duration.zero);
      _player.resume();
    }

    return Scaffold(
      backgroundColor: primaryColor,

      body: Column(
        children: [
          //To Do List Title with date
          Container(
            margin: EdgeInsets.only(top: 50),
            padding: const EdgeInsets.only(left: 18, right: 18),
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("To-Do List",
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'NotoSans',
                        color: Colors.white,
                      )),
                ),

                //SquareDate
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: SquareDate(),
                )
              ],
            ),
          ),
          //Month
          Container(
              padding: const EdgeInsets.only(left: 18, right: 18),
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  //Display Month
                  BlocBuilder<MonthCubit, String>(builder: (context, month) {
                    return Container(
                        child: Text("$month",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)));
                  }),
                  //Display Down Arrow
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.white,
                      )),
                ],
              )),

          //List of Date
          Container(
            height: 70,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SquareWeek(increase: index);
                }),
          ),

          //Row with task
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(top: 8.0),
              height: 500,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: //Instagram post
                  Expanded(
                child: ListView.builder(
                    itemCount: _taskTime.length,
                    itemBuilder: ((context, index) {
                      return ToDoTask(
                          taskName: _taskName[index], time: _taskTime[index]);
                    })),
              ),
            ),
          ),
        ],
      ),
      //Floating Add Button
      floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          splashColor: whiteGrey,
          //Compress the setState function inside statfulBuilder
          onPressed: () {
            _play(); // Correct function call
          },
          child: Icon(Icons.add)),
    );
  }
}
