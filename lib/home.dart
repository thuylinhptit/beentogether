import 'dart:io';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget{
  @override
  _Home createState() => _Home();

}
class _Home extends State<Home> {
  Future<File>imageFile;
  Future<File>imageFile2;
  String hoTen1;
  String hoTen2;
  String dongTren;
  String dongDuoi;
  DateTime timeStart;
  TextEditingController _textEditingController = TextEditingController();

  pickImage( ImageSource source ){
    setState(() {
      // ignore: deprecated_member_use
      imageFile = ImagePicker.pickImage(source: source);
    });
  }
  pickImage2( ImageSource source ){
    setState(() {
      // ignore: deprecated_member_use
      imageFile2 = ImagePicker.pickImage(source: source);
    });
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data,
            width: 130,
            height: 130,
          );
        } else if (snapshot.error != null) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return Image.asset('assert/chibi2.png');
        }
      },
    );
  }
  Widget showImage2() {
    return FutureBuilder<File>(
      future: imageFile2,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data,
            width: 130,
            height: 130,
          );
        } else if (snapshot.error != null) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return Image.asset('assert/chibi2.png');
        }
      },
    );
  }

  @override
  void initState() {
    timeStart = DateTime.now();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assert/chibi.png'),
                    fit: BoxFit.cover
                )
            ),
            child: Column(

              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Text(
                      "Been Together", style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: Colors.grey,)),
                ),
                GestureDetector(
                  onTap: (){
                    _showDialog();
                  }, child: Stack(
                  children: [
                    Container(
                      child: Center(
                        child: Image.asset('assert/ttdo.png', height: 320,width: 360,),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 45, 0, 20),
                            child: Center(
                              child: changeDongTren(),
                            )
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Center(
                            child: Text(
                              "400", style: TextStyle(decoration: TextDecoration
                                .none, color: Colors.white, fontSize: 90),
                            ),
                          ),
                        ),
                        Center(
                          child: changeDongDuoi(),
                        )
                      ],
                    )
                  ],
                )),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                          child: GestureDetector(
                            child: CircularProfileAvatar(
                              '',
                              child: showImage(),
                              borderColor: Colors.white,
                              borderWidth: 3,
                              radius: 50,
                            ),
                            onTap: (){
                              pickImage(ImageSource.gallery);
                            },
                          )
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: GestureDetector(
                            child: changeName1(),
                            onTap:(){
                              _dialogHoVaTen1();
                            },
                          ),
                        )
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(40, 40, 0, 0),
                        child: Center(
                          child: Image.asset(
                            'assert/traitim.png', height: 70, width: 70,),
                        )
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(40, 40, 0, 0),
                          child: GestureDetector(
                            child: CircularProfileAvatar(
                              '',
                              child: showImage2(),
                              borderColor: Colors.white,
                              borderWidth: 3,
                              radius: 50,
                            ),
                            onTap: (){
                              pickImage2(ImageSource.gallery);
                            },
                          )
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                          child: GestureDetector(
                            child: changeName2(),
                            onTap:(){
                              _dialogHoVaTen2();
                            },
                          )
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 100, 0, 0),
                              child: Image.asset(
                                'assert/trang.png', height: 60, width: 60,),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(40, 105, 0, 0),
                              child: Text(
                                "0", style: TextStyle(fontSize: 30,
                                  color: Colors.white,
                                  decoration: TextDecoration.none),
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Year", style: TextStyle(fontSize: 15,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                              child: Image.asset(
                                'assert/trang.png', height: 60, width: 60,),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 105, 0, 0),
                              child: Text(
                                "0", style: TextStyle(fontSize: 30,
                                  color: Colors.white,
                                  decoration: TextDecoration.none),
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            "Month", style: TextStyle(fontSize: 15,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                              child: Image.asset(
                                'assert/trang.png', height: 60, width: 60,),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 105, 0, 0),
                              child: Text(
                                "0", style: TextStyle(fontSize: 30,
                                  color: Colors.white,
                                  decoration: TextDecoration.none),
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            "Week", style: TextStyle(fontSize: 15,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                              child: Image.asset(
                                'assert/trang.png', height: 60, width: 60,),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 105, 0, 0),
                              child: Text(
                                "0", style: TextStyle(fontSize: 30,
                                  color: Colors.white,
                                  decoration: TextDecoration.none),
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            "Day", style: TextStyle(fontSize: 15,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                              child: Image.asset(
                                'assert/trang.png', height: 60, width: 60,),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 105, 0, 0),
                              child: Text(
                                "0", style: TextStyle(fontSize: 30,
                                  color: Colors.white,
                                  decoration: TextDecoration.none),
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            "Hour", style: TextStyle(fontSize: 15,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                              child: Image.asset(
                                'assert/trang.png', height: 60, width: 60,),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 105, 0, 0),
                              child: Text(
                                "0", style: TextStyle(fontSize: 30,
                                  color: Colors.white,
                                  decoration: TextDecoration.none),
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            "Minute", style: TextStyle(fontSize: 15,
                              color: Colors.white,
                              decoration: TextDecoration.none),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(70, 10, 30, 5),
                      child: Image.asset(
                        'assert/traitim.png', height: 50, width: 50,),
                    ),
                    Center(
                        child: Text(
                          "${timeStart.day}/${timeStart.month}/${timeStart.year}", style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            decoration: TextDecoration.none),
                        ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(50, 10, 0, 5),
                      child: Image.asset(
                        'assert/traitim.png', height: 50, width: 50,),
                    ),
                  ],
                )
                ],
            )
        )
    );
  }

  _showDialog() async{
    await showDialog(context: context,
    child: new AlertDialog(
      contentPadding: const EdgeInsets.all(16.0),
      content:  Container(
       // height: 200,
        child: Column(
          children: [
            GestureDetector(
              child: Text(
                "Thay đổi dòng trên", style: TextStyle( fontSize: 20, color: Colors.pink, decoration: TextDecoration.none),
              ),
              onTap: (){
                Navigator.of(context, rootNavigator: true).pop("");
                _dialogDongTren();
              },
            ),
            Divider(),
            GestureDetector(
              child: Text(
                "Thay đổi dòng dưới", style: TextStyle( fontSize: 20, color: Colors.pink, decoration: TextDecoration.none),
              ),
              onTap: (){
                Navigator.of(context,rootNavigator: true).pop("");
                _dialogDongDuoi();
              }

            ),
            Divider(),
            GestureDetector(
              child: Text(
                "Thay đổi thời gian bắt đầu", style: TextStyle( fontSize: 20, color: Colors.pink, decoration: TextDecoration.none),
              ),
              onTap: (){
                Navigator.of(context, rootNavigator: true).pop("");
                chooseTime();
              },
            ),
            Divider(),
            Text(
              "Thay đổi hình nền", style: TextStyle( fontSize: 20, color: Colors.pink,  decoration: TextDecoration.none),
            ),
          ],
        ),
      ),
      actions: [
        new FlatButton(
            onPressed: (){
              setState(() {
                Navigator.of(context, rootNavigator: true).pop("dialog");
              });
            },
            child: Text(
              "Cancel", style: TextStyle( fontSize: 20, decoration: TextDecoration.none),
            )),
        new FlatButton(
          onPressed: (){
            setState(() {
              Navigator.of(context, rootNavigator: true).pop("dialog");
            });
          },
          child: Text(
              "OK", style: TextStyle( fontSize: 20, decoration: TextDecoration.none)),
        )],
      ),

    );
  }

  _dialogDongTren() async {
    await showDialog<String>(
      context: context,
      child: new AlertDialog(
        contentPadding: const EdgeInsets.all(16.0),
        content: new Row(
          children: [
            new Expanded(child: TextField(
              autofocus: true,
              controller: _textEditingController,
              decoration: new InputDecoration(
                  labelText: 'Nhap dong tren',
              ),
              onChanged: (value){
                setState(() {
                  dongTren = value;
                });
              },
            )
            )
          ],
        ),
        actions: [
          new FlatButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                });
              },
              child: const Text('Cancel')),
          new FlatButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                  _textEditingController.text = '';
                });
              },
              child: const Text('Ok'))
        ],
      ),
    );
  }

  _dialogDongDuoi() async {
    await showDialog<String>(
      context: context,
      child: new AlertDialog(
        contentPadding: const EdgeInsets.all(16.0),
        content: new Row(
          children: [
            new Expanded(child: TextField(
              autofocus: true,
              controller: _textEditingController,
              decoration: new InputDecoration(
                labelText: 'Nhap dong duoi',
              ),
              onChanged: (value){
                setState(() {
                  dongDuoi = value;
                });
              },
            )
            )
          ],
        ),
        actions: [
          new FlatButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                });
              },
              child: const Text('Cancel')),
          new FlatButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                  _textEditingController.text = '';
                });
              },
              child: const Text('Ok'))
        ],
      ),
    );
  }

  _dialogHoVaTen2() async {
    await showDialog<String>(
      context: context,
      child: new AlertDialog(
        contentPadding: const EdgeInsets.all(16.0),
        content: new Row(
          children: [
            new Expanded(child: TextField(
              autofocus: true,
              controller: _textEditingController,
              decoration: new InputDecoration(
                  labelText: 'Nhap ten', hintText: 'Nhap ten cua ban'
              ),
              onChanged: (value){
                setState(() {
                  hoTen2 = value;
                });
              },
            )
            )
          ],
        ),
        actions: [
          new FlatButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                });
              },
              child: const Text('Cancel')),
          new FlatButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                  _textEditingController.text = '';
                });
              },
              child: const Text('Ok'))
        ],
      ),
    );
  }

  _dialogHoVaTen1() async {
    await showDialog<String>(
      context: context,
      child: new AlertDialog(
        contentPadding: const EdgeInsets.all(16.0),
        content: new Row(
          children: [
            new Expanded(child: TextField(
              controller: _textEditingController,
              decoration: new InputDecoration(
                  labelText: 'Nhap ten', hintText: 'Nhap ten cua ban'
              ),
              onChanged: (value){
                setState(() {
                  hoTen1 = value;
                });
              },
            )
            )
          ],
        ),
        actions: [
          new FlatButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                });
              },
              child: const Text('Cancel')),
          new FlatButton(
              onPressed: (){
                setState(() {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                  _textEditingController.text = '';
                });
              },
              child: const Text('Ok'))
        ],
      ),
    );
  }


  Widget changeName2(){
    if( hoTen2 == null ){
      return Text("Ho va ten",style: TextStyle(decoration: TextDecoration.none,
          fontSize: 15,
          color: Colors.white),);
    }
    else {
      return Text(hoTen2.toString(), style: TextStyle(decoration: TextDecoration.none,
          fontSize: 15,
          color: Colors.white),);
    }
  }

  Widget changeName1(){
    if( hoTen1 == null ){
      return Text("Ho va ten",style: TextStyle(decoration: TextDecoration.none,
          fontSize: 15,
          color: Colors.white),);
    }
    else {
      return Text(hoTen1.toString(), style: TextStyle(decoration: TextDecoration.none,
          fontSize: 15,
          color: Colors.white),);
    }
  }

  Widget changeDongTren(){
    if( dongTren == null ){
      return Text(
          "Been Together", style:TextStyle( decoration: TextDecoration
          .none, color: Colors.white, fontSize: 20)
      );
    }
    else{
      return Text(
          dongTren.toString(), style:TextStyle( decoration: TextDecoration
          .none, color: Colors.white, fontSize: 20)
      );
    }
  }

  Widget changeDongDuoi(){
    if( dongDuoi == null ){
      return Text(
          "Days", style:TextStyle( decoration: TextDecoration
          .none, color: Colors.white, fontSize: 20)
      );
    }
    else{
      return Text(
          dongDuoi.toString(), style:TextStyle( decoration: TextDecoration
          .none, color: Colors.white, fontSize: 20)
      );
    }
  }

  void chooseTime() async{
    DateTime time = await showDatePicker(initialDate: timeStart, context: context,
    firstDate: DateTime(DateTime.now().year-5), lastDate: DateTime(DateTime.now().year+5), );
    if( timeStart != null ){
      setState(() {
        timeStart = time;
      });
    }
  }
}




