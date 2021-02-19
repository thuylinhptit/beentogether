
import 'dart:ui';
import 'package:beentogether/register_screen.dart';
import 'package:beentogether/view_pager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home0 extends StatefulWidget{
  @override
  _Home0 createState() => _Home0();

}

class _Home0 extends State<Home0>{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(35, 150, 0, 0),
                        child: Image.asset("assert/love.png", height: 80, width: 80,)),
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 20, 0, 0),
                      child: Text("Login to", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.none),),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(40, 10, 0, 0),
                      child: Text("a lovely", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.none),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("life", style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.none),),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset("assert/love1.png",height: 300, width: 230,),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
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
            FlatButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute( builder: (context) => ViewPage()));
              },
              child: Container(
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 90),
                decoration: BoxDecoration( color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(18))),
                child: Center(child: Text("Login", style: TextStyle( fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Center(
                child: Text(
                  "Or", style: TextStyle( fontSize: 18, color: Colors.grey, ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(15),), border: Border.all(color: Colors.blueAccent, width: 2)
                    ),
                    child: Row(
                      children: [
                        Image.asset("assert/facebook.png",  height: 40, width: 40,),
                        Text(" Use Facebook", style: TextStyle( fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold), )
                      ],
                    )
                  ),
                ),
                FlatButton(
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(15),), border: Border.all(color: Colors.pinkAccent, width: 2)
                      ),
                      child: Row(
                        children: [
                          Image.asset("assert/google.png", height: 40, width: 40,),
                          Text(" User Google", style: TextStyle( fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold,))
                        ],
                      )
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: GestureDetector(
                  onTap:() =>  Navigator.push(context, MaterialPageRoute (builder: (context) => Register())),
                  child: Text(
                    "New Account", style: TextStyle( fontSize: 17, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}