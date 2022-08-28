import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/cubit/cubitStates.dart';

class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit(): super (CounterInitialState());
  static CounterCubit get(context) => BlocProvider.of(context);

  int Counter = 0;
  void Plus()
  {
    Counter++;
    emit(CounterPlusState());
  }
  void Miunc()
  {
    Counter--;
    emit(CounterMinceState());
  }



}