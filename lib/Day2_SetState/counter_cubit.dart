//Cubit

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(super.initialState);

  //increment
  //Emit is update the state and notifies listeners
  void increment() => emit(state + 1);
  //decrement
  void decrement() => emit(state - 1);
  //on change
  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    //When you call emit(newState), onChange is triggered, and it logs the change.
    //In programming, log (short for logging) refers to recording events, messages, or data about the execution of a program. Logs help developers debug, monitor, and analyze applications.
    super.onChange(change);
    print(change);
  }
}
