import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFieldWidgetState();
  }
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController _userNameditingController = TextEditingController();
  TextEditingController _userUsereditingController = TextEditingController();
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode focusScopeNode = FocusScopeNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userNameditingController.addListener(() {});
    _userNameditingController.text = 'hello world';
    _userNameditingController.selection = TextSelection(
        baseOffset: 2, extentOffset: _userNameditingController.text.length);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('textfield title'),
        ),
        body: Column(
          children: <Widget>[
            TextField(
              controller: _userNameditingController,
              autofocus: true,
              focusNode: focusNode1,
              decoration: InputDecoration(
                labelText: '请输入用户名',
                hintText: '用户名和邮箱',
                prefixIcon: Icon(Icons.person),
                enabledBorder: UnderlineInputBorder(borderSide:BorderSide(color: Colors.blue) ),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.red))
              ),
              onChanged: (value) {
                print(value);
              },
            ),
            TextField(
              focusNode: focusNode2,
              controller: _userUsereditingController,
              autofocus: false,
              decoration: InputDecoration(
                labelText: '请输入',
                hintText: '密码',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            RaisedButton(
              onPressed: () {
                print(_userNameditingController.text);
                print(_userUsereditingController.text);
//                if(focusScopeNode == null){
//                  focusScopeNode = FocusScope.of(context);
//                }
//                focusScopeNode.requestFocus(focusNode2);
              },
              child: Text('submit'),
            ),
          ],
        ),
      ),
    );
  }
}
