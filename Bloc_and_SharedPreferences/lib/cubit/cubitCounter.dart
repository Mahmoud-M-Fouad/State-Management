import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/cubit/cubitStates.dart';
import 'package:state_management/shared_preferences/shared_preferences.dart';


class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit(): super (CounterInitialState());
  static CounterCubit get(context) => BlocProvider.of(context);

  int Counter = SharedClass.getCounter(key: 'SaveCounter') == null?
  0:SharedClass.getCounter(key: 'SaveCounter');
  //int Counter = C;//==null? 0:SharedClass.getCounter(key: 'SaveCounter');

  void Plus()
  {
    Counter++;
    SharedClass().putCounter(counter:Counter ,key: 'SaveCounter');
    emit(CounterPlusState());
  }
  void Miunc()
  {
    Counter--;
    SharedClass().putCounter(counter:Counter ,key: 'SaveCounter');
    emit(CounterMinceState());
  }



}