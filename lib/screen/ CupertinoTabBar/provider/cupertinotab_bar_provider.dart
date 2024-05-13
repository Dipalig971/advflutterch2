import 'package:flutter/cupertino.dart';

class CupertinoSliderProvider extends ChangeNotifier{
  double index=0;

  void SliderTap(double value){
    index=value;
    notifyListeners();
  }

}
