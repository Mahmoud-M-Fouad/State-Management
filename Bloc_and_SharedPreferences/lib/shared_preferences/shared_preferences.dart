import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedClass{
  static late SharedPreferences sharedPreferences;

  static inti() async {
    sharedPreferences =  await SharedPreferences.getInstance();
  }

  Future<bool> putCounter({required String key,required int counter})
  {
    return sharedPreferences.setInt(key, counter);
  }

  static getCounter({required String key})
  {
    return sharedPreferences.getInt(key);
  }
}