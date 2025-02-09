import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(super.initialState);

  //increment
  void increment() => emit(state + 1);
  //decrement
  void decrement() => emit(state - 1);
}
