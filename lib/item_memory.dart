import 'package:beentogether/memory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMemory extends StatelessWidget{
  Memory memory;
  int idex;
  ItemMemory({@required this.memory, @required this.idex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Image.asset('assert/doc.png', height: 120, width: 50,),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset('assert/ttdo.png', height: 130 ,width: 130,),
                      ),
                      Column(
                        children: [
                          Text(
                            memory.date, style: TextStyle( fontSize: 20, color: Colors.pink),
                          ),
                          Text(
                            memory.content, style: TextStyle( fontSize: 20, color: Colors.pink),
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