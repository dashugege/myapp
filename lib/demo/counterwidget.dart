

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {

  var intCount ;

  CounterWidget({Key key,@required this.intCount}) : super(key:key);

  @override
  _CounterWidgetState createState() {
    return _CounterWidgetState();
  }


}

class _CounterWidgetState extends State<CounterWidget>{

  int _counter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('计数器'),),
        body:  Column(children: <Widget>[
          FlatButton(onPressed: (){
            setState(() {
              ++_counter ;
            });
          }, child: Text('$_counter'))
        ,Text("Hello world! I'm Jack. "*4,textAlign: TextAlign.left,),
          Text("Hello world! I'm Jack. "*4,textAlign: TextAlign.left,textScaleFactor: 1.5,),
          Text('datadatadatadatadatadatadatadata',style: TextStyle(
            color: Colors.blue,
            fontSize: 18,
            height: 1.0,
            decoration: TextDecoration.underline,
            decorationStyle: TextDecorationStyle.dashed,
            background: new Paint()..color = Colors.yellow
          ),),
          Text.rich(TextSpan(children: [
            TextSpan(text: 'home'),
            TextSpan(text: 'https://flutterchina.club',style: TextStyle(color: Colors.blue),),
          ])),
          DefaultTextStyle(style: TextStyle(color: Colors.red,fontSize: 20),textAlign: TextAlign.left, child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Text('hello word'),
                Text('i an jack'),
                Text('demo',style: TextStyle(color: Colors.blue,fontSize: 30),)
              ],
          ))
        ],
        ) ,
      ),
    );
  }



  @override
  void deactivate() {
    super.deactivate();
    print("deactive");


  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");

  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");

  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");

  }

  @override
  void initState() {
    super.initState();
    _counter=widget.intCount;
    print("initState");

  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");

  }


}