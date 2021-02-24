import 'package:beentogether/app/home2/home2.dart';
import 'file:///D:/CODE/Flutter/beentogether/lib/app/home/home.dart';
import 'package:beentogether/home4_chat.dart';
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
        Home(),
        Home2(),
        Home4(),
      ],
    );
  }
}