//Cubit

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class MonthCubit extends Cubit<String> {
  MonthCubit() : super(DateFormat('MMMM').format(DateTime.now()));
}

class ToDoListCubit extends Cubit<List<Map<String, String>>> {
  ToDoListCubit()
      : super([
          {'name': 'Navigation', 'time': '9:00 AM'},
          {'name': 'State Management', 'time': '12:00 PM'},
          {'name': 'do homework', 'time': '1:00 PM'},
          {'name': 'gym exercise', 'time': '4:20 PM'},
          {'name': 'flutter', 'time': '2:30 PM'},
          {'name': 'debate', 'time': '1:40 PM'},
          {'name': 'lalat king', 'time': '4:12 PM'},
          {'name': 'zei bi', 'time': '9:50 PM'},
          {'name': 'beimuyu', 'time': '2:10 PM'},
          {'name': 'music', 'time': '8:00 PM'},
        ]);

  void addTask(String taskName, String taskTime) {
    final updatedList = List<Map<String, String>>.from(state);
    updatedList.add({'name': taskName, 'time': taskTime});
    emit(updatedList);
  }

  void updateTask(String oldName, String newName) {
    final updatedList = List<Map<String, String>>.from(state);
    for (var task in updatedList) {
      if (task['name'] == oldName) {
        task['name'] = newName;
        break;
      }
    }
    emit(updatedList);
  }
}
