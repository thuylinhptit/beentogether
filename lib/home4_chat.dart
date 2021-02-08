import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home4 extends StatefulWidget{
  @override
  _Home4 createState() => _Home4();

}

class _Home4 extends State<Home4>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent ,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: (){

            },
          ),
          CircularProfileAvatar(
            '',
            child: Image.asset('assert/chibi2.png',),
            elevation: 4,
            borderColor: Colors.white,
            borderWidth: 3,
            radius: 29,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 19, 60, 0),
            child: Text(
              'Ho va ten', style: TextStyle(fontSize: 17, color: Colors.white, decoration: TextDecoration.none),
            ),
          ),
          IconButton(
            icon: Icon(Icons.call, color: Colors.white,),
            onPressed: (){

            },
          ),
          IconButton(
            icon: Icon(Icons.video_call, color: Colors.white,),
            onPressed: (){

            },
          ),
          IconButton(
            icon: Icon(Icons.info_outline, color: Colors.white,),
            onPressed: (){
            },
          ),
        ],
      ),
    );
  }

}