import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:two_month_flutter/ToDoList/toDoList_cubit.dart';

class ToDoTask extends StatefulWidget {
  final String taskName;
  final String time;

  const ToDoTask({super.key, required this.taskName, required this.time});

  @override
  State<ToDoTask> createState() => _ToDoTaskState();
}

class _ToDoTaskState extends State<ToDoTask> {
  String _editedName= "";

  
  
  
  void updateTask() {
    if (_editedName != widget.taskName) {
      context
          .read<ToDoListCubit>()
          .updateTask(widget.taskName, _editedName);
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return
        //Left Portion Container
        Row(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(10.0),
          height: 60,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 144, 151, 242),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              //Image
              Container(
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    image: DecorationImage(
                        image: AssetImage("assets/img/zeibi.jpg"),
                        fit: BoxFit.cover)),
                width: 40,
                height: 40,
              ),

              //Text
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Center(
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                          decoration: InputDecoration(
                            hintText: widget.taskName,
                            border: InputBorder.none,
                          ),
                          onEditingComplete: () {
                            setState(() {
                              updateTask();
                            });
                          },
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),

        //Right Portion
        Container(
          padding: const EdgeInsets.all(5),
          height: 60,
          width: MediaQuery.of(context).size.width * 0.23,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 144, 151, 242),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                widget.time,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
