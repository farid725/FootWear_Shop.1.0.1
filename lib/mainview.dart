import 'package:flutter/cupertino.dart';

class MainView extends ChangeNotifier{
  update(){
    notifyListeners();
  }
}