
import 'package:beentogether/bloc_home/home_screen.dart';
import 'package:beentogether/memory_screen.dart';
import 'package:beentogether/chat_screen.dart';
import 'package:flutter/material.dart';

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
        HomeScreen(),
        Home2(),
        Home4(),
      ],
    );
  }
}