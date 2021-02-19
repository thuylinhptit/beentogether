import 'package:beentogether/bloc_home/home.cubit.dart';
import 'package:beentogether/login_screen.dart';
import 'package:beentogether/hom3_mat_khau.dart';
import 'package:beentogether/memory_screen.dart';
import 'package:beentogether/chat_screen.dart';
import 'package:beentogether/register_screen.dart';
import 'package:beentogether/todo_memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'bloc_home/home_screen.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Provider(
        create: (context) => HomeCubit(),
        child: HomeScreen(),)
      );
    }
}
void main (){
  runApp(
      // ChangeNotifierProvider<TodoMemory>(
      //   create: (context){
      //     return TodoMemory();
      //    },
          MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyApp(),
          ));
}

