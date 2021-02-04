import 'package:beentogether/add_memory.dart';
import 'package:beentogether/list_memory.dart';
import 'package:beentogether/todo_memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Home2 extends StatefulWidget{
  @override
  _Home2 createState() => _Home2();

}
var time = DateTime.now();
String format = DateFormat('dd/MM/yyyy').format(time);
class _Home2 extends State<Home2>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          Scaffold(
            body: Container(
              child: Consumer<TodoMemory>(
                builder: (context, model, _){
                  return ListMemory(listMemory: model.memorylist,);
                },
              ),
            ),
            floatingActionButton: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 30, 20),
              child: FloatingActionButton(
                child: Icon(Icons.create, color: Colors.white,),
                backgroundColor: Colors.pinkAccent,
                onPressed:() =>  Navigator.push(context, MaterialPageRoute(builder: (context) => AddMemory() )),
              ),
            ),
          ),

        ],
      ),
    );
  }

}