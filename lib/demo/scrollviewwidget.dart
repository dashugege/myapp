import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class ScrollViewWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ScrollViewWidgetState();
  }
}

//class _ScrollViewWidgetState extends State<ScrollViewWidget>{
//
//  @override
//  Widget build(BuildContext context) {
//    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(title: Text('scrollerbar'),),
//        body: SingleChildScrollView(
//          padding: EdgeInsets.all(16.0),
//          child: Center(
//            child: Column(
//              children: str.split("").map((e) => Text(e,textScaleFactor: 2.0,)).toList()
//            ),
//          ),
//        ),
//      ),
//    );
//
//  }
//
//}

class _ScrollViewWidgetState extends State<ScrollViewWidget> {
  static const loadingTag = "##loading##"; //表尾标记
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('scrollerbar'),
            ),
            body: Column(
              children: [
                ListTile(title: Text('商品列表'),),
                Expanded(child: ListView.separated(
                    itemBuilder: (context, index) {
                      if (_words[index] == loadingTag) {
                        if (_words.length - 1 < 100) {
                          _retrieveData();
                          return Container(
                            padding: const EdgeInsets.all(16.0),
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 24.0,
                              height: 24.0,
                              child: CircularProgressIndicator(
                                strokeWidth: 2.0,),
                            ),
                          );
                        } else {
                          return Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(16.0),
                            child: Text('没有更多'),
                          );
                        }
                      }
                      return ListTile(title: Text(_words[index]),);
                    },
                    separatorBuilder: (context, index) {
                      return divider1;
                    },
                    itemCount: 100),),
              ],
            )
        ));
  }


  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      setState(() {
        //重新构建列表
        _words.insertAll(_words.length - 1,
            //每次生成20个单词
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList()
        );
      });
    });
  }
}
