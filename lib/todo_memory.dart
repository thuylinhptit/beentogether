import 'dart:collection';

import 'package:beentogether/memory.dart';
import 'package:flutter/cupertino.dart';

class TodoMemory extends ChangeNotifier{
  List<Memory> listMemory = [];
  void addMemory(Memory memory){
    listMemory.add(memory);
    notifyListeners();
  }
  UnmodifiableListView <Memory> get memorylist => UnmodifiableListView(listMemory);
  update(){
    notifyListeners();
  }
}