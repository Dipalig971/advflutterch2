import 'package:flutter/cupertino.dart';

class CupertinoSliderProvider extends ChangeNotifier{
  int index=0;

  void SliderTap(String value){
    index=int.parse(value);
    notifyListeners();
  }

}
