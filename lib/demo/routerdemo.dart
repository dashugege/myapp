import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RouterDemo extends StatelessWidget {

  final String text;

  RouterDemo({Key key, @required this.text}) : super(key : key);


  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context).settings.arguments;
    print(args);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('new router'),leading: Icon(Icons.backup),),
        body: Center(child: Column(
          children: <Widget>[
             Text('text'),
            RaisedButton(onPressed: ()  {
              Navigator.pop(context,['返回值']);
            },child: Text('返回'),)
          ],
        ),),
      ),
    );
  }



}
