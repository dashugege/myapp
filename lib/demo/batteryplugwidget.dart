

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BatteryPlugWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BatteryPlugWidgetState();
  }

}


class _BatteryPlugWidgetState extends State<BatteryPlugWidget>{
  
  String _batteryLevel = 'Unknown battery level.';
  static const platform = const MethodChannel('samples.flutter.io/battery');

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('插件开发'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                  onPressed: (){
                    _getBatteryLevel();
                  },
                  child: Text('获取电池电量'),
             ),
              Text(_batteryLevel),

            ],
          ),
        ),
      ),
    );

  }

  Future<Null> _getBatteryLevel() async {
    String batteryLevel ;
    try {

      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    }on PlatformException catch(e){
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
    setState(() {
      _batteryLevel = batteryLevel;
    });

  }

}