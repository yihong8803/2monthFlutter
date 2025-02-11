//Cubit

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class MonthCubit extends Cubit<String> {
  MonthCubit() : super(DateFormat('MMMM').format(DateTime.now()));

}
