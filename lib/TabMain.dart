import 'package:flutter/material.dart';
import 'Tab1.dart';
import 'Tab2.dart';
import 'Tab3.dart';

class TabMain extends StatefulWidget {
  @override
  _TabMainState createState() => _TabMainState();
}

class _TabMainState extends State<TabMain> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  TabController _tabController;
  List<Widget> _listController;

  List tabs = ['首页', '新闻', '设置'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _listController = [
      Tab1(),
      Tab2(),
      Tab3(),
    ];
    _tabController.addListener(() => _bottomNavigationBar());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: _listController[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('search')),
          BottomNavigationBarItem(icon: Icon(Icons.send), title: Text('send')),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    ));
  }

  _bottomNavigationBar() {}
}
