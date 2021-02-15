import 'dart:collection';
import 'package:beentogether/ultis/Application.dart';
import 'package:flutter/cupertino.dart';

class TodoMemory extends ChangeNotifier{
  // List<Memory> listMemory = [];
  // void addMemory(Memory memory){
  //   listMemory.add(memory);
  //   notifyListeners();
  // }
  // UnmodifiableListView <Memory> get memoryList => UnmodifiableListView(listMemory);
  bool _listIsEmpty = (Application.listMemory.memoryList.length != 0 ) ? false : true;

  bool get listIsEmpty => _listIsEmpty;

  void listIsEmptyState(bool value){
    _listIsEmpty = value;
    notifyListeners();
  }
}