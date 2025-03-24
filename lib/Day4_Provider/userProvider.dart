import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String userName;

  var number;

  UserProvider({this.userName = "Mapp", this.number = 0});

  void changeUserName({
    required String newUserName,
  }) async {
    userName = newUserName;
    notifyListeners();
  }

  void incrementNumber(){
    number++;
    notifyListeners();
  }

  void decrementNumber(){
    number--;
    notifyListeners();
  }
}
