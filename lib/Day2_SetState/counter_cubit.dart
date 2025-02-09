//Cubit

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(super.initialState);

  //increment
  void increment() => emit(state + 1);
  //decrement
  void decrement() => emit(state - 1);
  //on change
  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }
}
