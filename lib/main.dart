import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  runApp(MyApp());
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
        Image.asset("assert/chibi.png"),
        Home(),
      ],
    );
  }

}