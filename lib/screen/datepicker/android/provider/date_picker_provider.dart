import 'package:flutter/cupertino.dart';

class DatePickerProvider extends ChangeNotifier{
  DateTime dateselect=DateTime.now();

  void ChangeDatePick(value){
    dateselect=value!;
    notifyListeners();
  }
}