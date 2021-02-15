

import 'dart:io';

import 'file:///D:/CODE/Flutter/beentogether/lib/model/memory.dart';
import 'package:beentogether/ultis/Application.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMemory extends StatelessWidget{
  final int index;
  ItemMemory({@required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 3.0, color: Colors.pinkAccent),
        borderRadius:
        const BorderRadius.all(const Radius.circular(30.0)),
      ),
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
  //    color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Image.asset('assert/doc.png', height: 120, width: 50),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        child: Image.file(File(Application.listMemory.memoryList[index].imagePath),width: 20,height: 20)
                      ),
                      Column(
                        children: [
                          Text(
                            Application.listMemory.memoryList[index].date, style: TextStyle( fontSize: 20, color: Colors.pink),
                          ),
                          Text(
                            Application.listMemory.memoryList[index].content, style: TextStyle( fontSize: 20, color: Colors.pink),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}