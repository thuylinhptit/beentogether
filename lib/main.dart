import 'package:beentogether/Home0.dart';
import 'package:beentogether/hom3_mat_khau.dart';
import 'package:beentogether/home2.dart';
import 'package:beentogether/home4_chat.dart';
import 'package:beentogether/todo_memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home0()
      );
    }
}
void main (){
  runApp(
      ChangeNotifierProvider<TodoMemory>(
        create: (context){
          return TodoMemory();
         }, child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyApp()),),);
}

