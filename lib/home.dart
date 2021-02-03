import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  _Home createState() => _Home();

}
class _Home extends State<Home> {
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
                      "Hello", style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    color: Colors.grey,)),
                ),
                Stack(
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
                              child: Text(
                                "Been Together", style:TextStyle( decoration: TextDecoration
                                  .none, color: Colors.white, fontSize: 20)
                              ),
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
                          child: Text(
                            "Days", style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              fontSize: 28
                          ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
                          child: CircleAvatar(
                            maxRadius: 40,
                            backgroundColor: Colors.blue,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            "Ho va ten", style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(70, 40, 0, 0),
                        child: Center(
                          child: Image.asset(
                            'assert/traitim.png', height: 70, width: 70,),
                        )
                    ),
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(50, 40, 0, 0),
                          child: CircleAvatar(
                            maxRadius: 40,
                            backgroundColor: Colors.blue,

                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(50, 10, 0, 0),
                          child: Text(
                            "Ho va ten", style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              color: Colors.white),
                          ),
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
                              padding: EdgeInsets.fromLTRB(20, 150, 0, 0),
                              child: Image.asset(
                                'assert/trang.png', height: 60, width: 60,),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(40, 165, 0, 0),
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
                              padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                              child: Image.asset(
                                'assert/trang.png', height: 60, width: 60,),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 165, 0, 0),
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
                              padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                              child: Image.asset(
                                'assert/trang.png', height: 60, width: 60,),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 165, 0, 0),
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
                              padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                              child: Image.asset(
                                'assert/trang.png', height: 60, width: 60,),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 165, 0, 0),
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
                              padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                              child: Image.asset(
                                'assert/trang.png', height: 60, width: 60,),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 165, 0, 0),
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
                              padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                              child: Image.asset(
                                'assert/trang.png', height: 60, width: 60,),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 165, 0, 0),
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
                        "1/1/2021", style: TextStyle(color: Colors.white,
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
}
