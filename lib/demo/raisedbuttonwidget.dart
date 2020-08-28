import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RaiseButtonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RaiseButtonWidgetState();
  }
}

class _RaiseButtonWidgetState extends State<RaiseButtonWidget> {
  bool _switchvalue = true;
  bool _checkboxvalue = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('raisedbutton widget'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text('raised button'),
            ),
            FlatButton(onPressed: () {}, child: Text('flat button')),
            OutlineButton(
              onPressed: () {},
              child: Text('OutlineButton'),
            ),
            IconButton(icon: Icon(Icons.thumb_up), onPressed: () {}),
            RaisedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.thumb_up),
                label: Text('RaisedButton.icon')),
            FlatButton(
              onPressed: () {},
              child: Text('submit'),
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            Image(
              image: AssetImage("images/add_pic.png"),
              width: 100,
              height: 100,
            ),
            Image(
              image: NetworkImage(
                  "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1472885113,697029560&fm=26&gp=0.jpg"),
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            Switch(
                value: _switchvalue,
                onChanged: (value) {
                  setState(() {
                    _switchvalue = value;
                  });
                }),
            Checkbox(
                value: _checkboxvalue,
                onChanged: (value) {
                  setState(() {
                    _checkboxvalue = value;
                  });
                })

          ],
        ),
      ),
    );
  }
}
