import 'package:flutter/material.dart';
import 'home/home_tab1.dart';
import 'home/home_tab2.dart';
import 'home/home_tab3.dart';

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() {
    return _Tab1State();
  }
}

class _Tab1State extends State<Tab1> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Widget> _listController;
  List tabs = ['首页', '新闻', '设置'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _listController = [
      home_tab1(),
      home_tab2(),
      home_tab3(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('tab1'),
            bottom: TabBar(
                controller: _tabController,
                tabs: tabs.map((e) => Tab(text: e)).toList())),
        body: TabBarView(children: _listController,controller: _tabController,),
      ),

    );
  }
}