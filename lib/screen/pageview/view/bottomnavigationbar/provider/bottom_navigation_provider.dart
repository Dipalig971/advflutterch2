import 'package:flutter/cupertino.dart';

class BottomNavigationBarProvider extends ChangeNotifier{
  int index = 0;

  void changeBottomIndex(int value){
   index=value;
   notifyListeners();
  }
}