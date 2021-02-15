
import 'dart:io';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Home3 extends StatefulWidget{
  @override
  _Home3 createState() => _Home3();

}
class _Home3 extends State<Home3>{
  Future<File>imageFile;

  pickImage( ImageSource source ){
    setState(() {
      // ignore: deprecated_member_use
      imageFile = ImagePicker.pickImage(source: source);
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
          return Image.asset('assert/trang.png');
        }
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration( image: DecorationImage(
          image: AssetImage('assert/chibi.png'),
          fit: BoxFit.cover
      )),
      child: Column(
        children: [Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 100, 0, 0),
                    child: GestureDetector(
                      child: CircularProfileAvatar(
                        '',
                        child: showImage(),
                        borderColor: Colors.purpleAccent,
                        borderWidth: 4,
                        elevation: 2,
                        radius: 120,
                      ),
                     onTap: (){
                        pickImage(ImageSource.gallery);
                     },
                    ),
                  ),
                ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Center(
                child: Text(
                  'Nhap mat khau', style: TextStyle( fontSize: 20, decoration: TextDecoration.none),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(85, 10, 0, 0),
            child: Table(
              children: [
                TableRow(
                  children: [
                    Text ('1', style: TextStyle(fontSize: 20,decoration: TextDecoration.none),),
                    Text ('2', style: TextStyle(fontSize: 20,decoration: TextDecoration.none),),
                    Text ('3', style: TextStyle(fontSize: 20,decoration: TextDecoration.none),),
                  ]
                ),
                TableRow(
                    children: [
                      Text ('4', style: TextStyle(fontSize: 20,decoration: TextDecoration.none),),
                      Text ('5', style: TextStyle(fontSize: 20,decoration: TextDecoration.none),),
                      Text ('6', style: TextStyle(fontSize: 20,decoration: TextDecoration.none),),
                    ]
                ),
                TableRow(
                    children: [
                      Text ('7', style: TextStyle(fontSize: 20,decoration: TextDecoration.none),),
                      Text ('8', style: TextStyle(fontSize: 20,decoration: TextDecoration.none),),
                      Text ('9', style: TextStyle(fontSize: 20,decoration: TextDecoration.none),),
                    ]
                ),
                TableRow(
                    children: [
                      Text ('', style: TextStyle(fontSize: 20,decoration: TextDecoration.none),),
                      Text ('0', style: TextStyle(fontSize: 20,decoration: TextDecoration.none),),
                      Text ('', style: TextStyle(fontSize: 20,decoration: TextDecoration.none),),
                    ]
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}