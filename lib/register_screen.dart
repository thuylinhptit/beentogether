
import 'dart:ui';
import 'package:beentogether/view_pager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

class Register extends StatefulWidget{
  @override
  _Register createState() => _Register();

}

class _Register extends State<Register>{
  String _singleValue = "Female";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 120, 40, 0),
                        child: Image.asset("assert/love.png", height: 80, width: 80,)),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 40, 0),
                      child: Text("Create", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.none),),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 40, 0),
                      child: Text("a new", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.none),),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 40, 20),
                      child: Text("account", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.none),),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset("assert/love2.png",height: 300, width: 230,),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15),), border: Border.all(color: Colors.pinkAccent, width: 2)
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Name: ",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15),), border: Border.all(color: Colors.pinkAccent, width: 2)
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Gmail: ",
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(15),), border: Border.all(color: Colors.pinkAccent, width: 2)
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Pass: ",
                ),
              ),
            ),
            Container(
               margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              // padding: EdgeInsets.all(8.0),
              child: RadioButton(
                description: "Female",
                value: "Female",
                groupValue: _singleValue,
                onChanged: (value){
                  setState(() {
                    _singleValue = value;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              // padding: EdgeInsets.all(8.0),
              child: RadioButton(
                description: "Male",
                value: "Male",
                groupValue: _singleValue,
                onChanged: (value){
                  setState(() {
                    _singleValue = value;
                  });
                },
              ),
            ),
            FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute( builder: (context) => ViewPage()));
              },
              child: Container(
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 90),
                decoration: BoxDecoration( color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(18))),
                child: Center(child: Text("Sign Up", style: TextStyle( fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}