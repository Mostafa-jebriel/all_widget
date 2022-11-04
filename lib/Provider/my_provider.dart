import 'package:flutter/material.dart';


class MyProvider extends ChangeNotifier{
  int c=0;


  void increment(){
    c++;
    notifyListeners();
  }

}