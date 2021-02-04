import 'package:beentogether/home2.dart';
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
      home: ViewPage()
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

class ViewPage extends StatefulWidget{
  @override
  _ViewPage createState() => _ViewPage();

}

class _ViewPage extends State<ViewPage>{
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children:[
        Home(),
        Home2(),
        Home(),
      ],
    );
  }

}