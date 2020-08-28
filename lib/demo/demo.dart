

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/demo/batteryplugwidget.dart';
import 'package:myapp/demo/counterwidget.dart';
import 'package:myapp/demo/raisedbuttonwidget.dart';
import 'package:myapp/demo/rowcolumnwidget.dart';
import 'package:myapp/demo/textfieldwidget.dart';

import 'routerdemo.dart';

class Demo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: "/",
      routes: {
        'routerdemo':(context) {
          return RouterDemo(text: ModalRoute.of(context).settings.arguments,);
        },
      },
      title: "this splash",
      home: HomePage(),
    );

  }

}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('this is demo'),),
          body:Column(children: <Widget>[
            FlatButton(onPressed: () async {
              var result = await  Navigator.push(context, MaterialPageRoute(builder: (context){
                return RouterDemo(text: '第一个页面',);
              }));
              print(result);
            }, child: Text('open new router'), textColor: Colors.blue,),

            FlatButton(onPressed: (){
              Navigator.pushNamed(context, 'routerdemo',arguments: 'this router table');
            },child: Text('路由表跳转'),textColor: Colors.red,),

            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return CounterWidget(intCount: 1);
              }));
            },child: Text('计数器'),textColor: Colors.blue,),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return RaiseButtonWidget();
              }));
            }, child: Text('button widget'),textColor: Colors.yellow,),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return TextFieldWidget();
              }));
            }, child: Text('button widget'),textColor: Colors.blue,),
            FlatButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return BatteryPlugWidget();
              }));
            }, child: Text('button rowcolumn'),textColor: Colors.blue,),
          ],)
        )
    );

}




  
}