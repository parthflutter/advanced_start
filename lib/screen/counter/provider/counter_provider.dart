import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier
{
  int i=0;

  void increment()
  {
    i++;
    notifyListeners();
  }
  void decrement() {
    i--;
    notifyListeners();
  }
   void mutli2()
    {
      i=i*2;
      notifyListeners();
  }
  void mutli3()
  {
    i=i*3;
    notifyListeners();
  }
  void multi5()
  {
    i=i*5;
    notifyListeners();
  }
}