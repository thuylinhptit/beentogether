
import 'package:beentogether/add_image.dart';
import 'package:beentogether/memory.dart';
import 'package:beentogether/todo_memory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class AddMemory extends StatefulWidget{
  Memory memory;
  int index;
  AddMemory({this.memory, this.index});
  @override
  _AddMemory createState() => _AddMemory();
}
class _AddMemory extends State<AddMemory>{
  final contentController = TextEditingController();
  DateTime dateTime;
  @override
  void initState() {
    dateTime = DateTime.now();
    super.initState();
    if( widget.memory != null ){
      contentController.text = widget.memory.content;
    }
  }
  @override
  void dispose() {
    contentController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: contentController,
            decoration: InputDecoration(
              labelText: "Mo ta",
              labelStyle: TextStyle( fontSize: 17, color: Colors.black87),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ListTile(
              title: Text(
                "Chon Ngay:", style: TextStyle(fontSize: 20, color: Colors.black87, ),
              ),
              subtitle: Text(
                '${dateTime.day}/${dateTime.month}/${dateTime.year}', style: TextStyle( fontSize: 15, color: Colors.black87),
              ),
              trailing: IconButton(
                onPressed: chooseDate,
                icon: Icon(Icons.calendar_today, color: Colors.pink,),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(
              children: [
                Text(
                  "Chon anh:", style: TextStyle( fontSize: 20, color: Colors.black87),
                ),
                AddImage(),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
            child: RaisedButton(
              onPressed: Save,
              child: Text(
                "Luu", style: TextStyle( fontSize: 20, ),

              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              color: Colors.pinkAccent,
            ),
          )
        ],
      ),
    );
  }
  void chooseDate() async{
    DateTime date = await showDatePicker(initialDate: dateTime, context: context, firstDate: DateTime(DateTime.now().year-5), lastDate: DateTime(DateTime.now().year+5));
    if( date  != null ){
      setState(() {
        dateTime = date;
      });
    }
  }
  void Save(){
    final String content = contentController.text;
    var memoryProvider = Provider.of<TodoMemory>(context, listen: false);
    if( content.isNotEmpty ){
      Memory memory = Memory(date: '${dateTime.day}/${dateTime.month}/${dateTime.year}', content: content);
      memoryProvider.addMemory(memory);
      List<Memory> listMemory = new List();
      listMemory.add(memory);
      memoryProvider.update();
      Navigator.pop(context);
      print('Done');
    }
  }
}

