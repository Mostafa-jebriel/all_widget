


import 'package:shared_preferences/shared_preferences.dart';

class Preferences{
  static SharedPreferences? dark;
  static init() async{
    dark=await SharedPreferences.getInstance();
  }

  static Future<bool> putData({required String key,required bool v}) async{
   return await dark!.setBool(key,v);
  }
  static bool? getData({required String key}) {
    return dark!.getBool(key);
  }
}