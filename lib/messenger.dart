import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messenger extends StatelessWidget{
  final String text;
  final AnimationController animationController;
  const Messenger({Key key, this.text, this.animationController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: new CurvedAnimation(parent: animationController, curve: Curves.easeOut),
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            new Container(
              child: Container(
                  constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .6),
                  padding: EdgeInsets.all(12.0),
                  decoration:
                  BoxDecoration( color:  Colors.blue,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                          bottomLeft: Radius.circular(18)
                      )),
                  child: new Text(text, style: TextStyle( fontSize: 15, color: Colors.white),)),
            ),
          ],
        ),
      ),
    );
  }

}