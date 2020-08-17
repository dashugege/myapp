import 'package:flutter/material.dart';


class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() {
    return _Tab2State();
  }

}

class _Tab2State extends State<Tab2>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('tab2'),),
      ),
    );
  }
}