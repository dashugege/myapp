import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RowColumnWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RowColumnWidgetState();
  }
}

class _RowColumnWidgetState extends State<RowColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('row column title'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('hello world'),
                Text('i am jack'),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('hello world'),
                Text('i am jack'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text(" hello world "),
                Text(" I am Jack "),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                Text(
                  " hello world ",
                  style: TextStyle(fontSize: 30.0),
                ),
                Text(" I am Jack "),
              ],
            ),
            Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 100,
                child: Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: 30,
                          color: Colors.red,
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: 30,
                          color: Colors.green,
                        )),
                  ],
                ),
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: Text('button'),
                  color: Colors.greenAccent,
                ),
                Positioned(
                    child: Text('top'),
                    top: 20,
                    left: 10,
                )
              ],
            ),
            Container(
//              height: 120,
//              width: 120,
              color: Colors.blue[50],
              child: Align(
                widthFactor: 2,
                heightFactor: 2,
                alignment: Alignment(2,0.0),
                child: FlutterLogo(
                  size: 80,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
