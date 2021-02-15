

import 'package:flutter/cupertino.dart';

class AddImageState extends ChangeNotifier{
  bool _imageAdded = false;

  bool get imageAdded => _imageAdded;

  void changeImageState(bool value){
    _imageAdded = value;
    notifyListeners();
  }

}