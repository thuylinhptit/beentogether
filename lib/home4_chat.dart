import 'package:beentogether/messenger.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home4 extends StatefulWidget{
  @override
  _Home4 createState() => _Home4();

}

class _Home4 extends State<Home4> with TickerProviderStateMixin{
  var _textController = new TextEditingController();
  final List<Messenger> listMessenger = <Messenger>[];
  ScrollController scrollController;
  bool _isComposing = false;

  @override
  void dispose() {
    for( Messenger mess in listMessenger ){
      mess.animationController.dispose();
    }
    super.dispose();
  }

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

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
      body: Container(
        child: Column(
          children: [
             Flexible(
                child: ListView.builder(
                  controller: scrollController ,
                  reverse: true,
                  padding: EdgeInsets.all(8.0),
                  itemBuilder: (_, int index ) => listMessenger[index],
                  itemCount: listMessenger.length,)
            ),
            Container(
          //    decoration: BoxDecoration( color: Colors.blue),
              child: SafeArea(
                bottom: true,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 7.0),
                        child: IconButton(
                          icon: Icon(Icons.camera_alt, color: Colors.pinkAccent,),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 7.0),
                        child: IconButton(
                          icon: Icon(Icons.image, color: Colors.pinkAccent,),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(15.0),
                          padding: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0, color: Colors.pinkAccent),
                            borderRadius: BorderRadius.all(Radius.circular(20))
                          ),
                          child: TextField(
                            controller: _textController,
                            onChanged: (text){
                              setState(() {
                                _isComposing = text.length > 0;
                              });
                            },
                            decoration: InputDecoration.collapsed(hintText: "Send a message"),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 7.0),
                        child: IconButton(
                            icon: Icon(Icons.send, color: Colors.pinkAccent,),
                            onPressed: _isComposing ? () => submit( _textController.text ) : null,
                          ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
  void submit( String str ){
    _textController.clear();
    setState(() {
      _isComposing = false;

    });
    if( str.length > 0 ){
      Messenger messenger = new Messenger(
        text: str,
        animationController: new AnimationController( duration: Duration(milliseconds: 700), vsync: this),
      );
      setState(() {
        listMessenger.insert(0, messenger);
      });
      messenger.animationController.forward();
    }

  }
}
