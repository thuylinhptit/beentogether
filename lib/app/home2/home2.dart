import 'package:beentogether/app/add_memory/add_memory.dart';
import 'package:beentogether/app/home2/home2.cubit.dart';
import 'package:beentogether/item_memory.dart';
import 'package:beentogether/ultis/Application.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class Home2 extends StatefulWidget {
  @override
  _Home2 createState() => _Home2();
}

var time = DateTime.now();
String format = DateFormat('dd/MM/yyyy').format(time);

class _Home2 extends State<Home2> {
  Home2Cubit _home2cubit = Home2Cubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assert/chibi.png'), fit: BoxFit.cover)),
          child: BlocBuilder<Home2Cubit, Home2State>(
              cubit: _home2cubit,
              builder: (context, state) {
                if (state is Home2Loaded)
                  return ListView.builder(
                            itemCount: Application.listMemory.memoryList.length,
                            // ignore: missing_return
                            itemBuilder: (_,item) => ItemMemory(index: item));
                else{
                  return CircularProgressIndicator();
                }
              })
          // Consumer<TodoMemory>(
          //   builder: (_, model,__){
          //     // return ListMemory(listMemory: model.memoryList,);
          //     return model.listIsEmpty ? Container() : ListView.builder(
          //         itemCount: Application.listMemory.memoryList.length,
          //         itemBuilder: (_,item) => ItemMemory(index: item));
          //   },
          // ),
          ),
      floatingActionButton: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 30, 20),
        child: FloatingActionButton(
          child: Icon(
            Icons.create,
            color: Colors.white,
          ),
          backgroundColor: Colors.pinkAccent,
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddMemory())),
        ),
      ),
    );
  }
}
