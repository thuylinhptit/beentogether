import 'package:beentogether/item_memory.dart';
import 'package:beentogether/memory.dart';
import 'package:flutter/cupertino.dart';

class ListMemory extends StatelessWidget{
  final List <Memory> listMemory;

  const ListMemory({Key key, this.listMemory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getMemory(),
    );
  }

  List<Widget> getMemory(){
    var index = -1;
    return listMemory.map((e) {
      index += 1 ;
      return ItemMemory( memory: e, idex: index,);
    }).toList();
  }

}