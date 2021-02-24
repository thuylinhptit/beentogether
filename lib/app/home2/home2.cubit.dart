
import 'dart:convert';

import 'package:beentogether/model/memory.dart';
import 'package:beentogether/ultis/Application.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home2.state.dart';

class Home2Cubit extends Cubit<Home2State> {

  Home2Cubit() : super(Home2Initial()){
    Application.listMemory.memoryList = [];
    if (Application.sharedPreferences.hasKey("key")) {
      Application.listMemory = ListMemory.fromJson(
          json.decode(Application.sharedPreferences.getString("key")));
      changeStatus();
    }
  }

  void changeStatus() => emit(Home2Loaded());
}
