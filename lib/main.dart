import 'package:beentogether/bloc_home/home.cubit.dart';
import 'package:beentogether/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_home/home_screen.dart';
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => HomeCubit(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
      );
     // );
    }
}
void main (){
  runApp(MyApp());
      // ChangeNotifierProvider<TodoMemory>(
      //   create: (context){
      //     return TodoMemory();
      //    };
      //     MaterialApp(
      //       debugShowCheckedModeBanner: false,
      //       home: MyApp(),
      //     )));
}

