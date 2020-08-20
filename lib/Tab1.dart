import 'package:flutter/material.dart';
import 'package:myapp/api/DioManager.dart';
import 'package:myapp/entity/list_entity.dart';
import 'home/Home_tab1.dart';
import 'home/Home_tab2.dart';
import 'home/Home_tab3.dart';

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
      Home_tab1(),
      Home_tab2(),
      Home_tab3(),
    ];
    DioManager.getInstance().get<ListEntity>('https://api.soyoung.com/v8/message/listmessage?device_id=145&device_model=HUAWEI-JKM-AL00b&lng=116.46883&lver=8.7.0&num=20&xy_token=5fc3a034aeff0f6755cce07c348dc59d&cityId=0&vistor_uid=0&_sign=%242a%2405%24OAYiHZLfrfDTnVeXNIm4vey0XN.I0AV6cL%2F5i0gX3uUqTsYlhT43C&sys=2&uuid=5742ebf3ae54a0f9&uid=20103627&pinyin=beta&sdk_version=28&device_os_version=9&xy_device_token=77b00157b2ba87452fd3b9e637ee2bc961&_time=1597894298&ab_id=1DCAC1F02D71A4A8B68CF9131AF9B049&app_id=2&request_id=03e6fdbe37ca95caf20fbefd63284992&lat=40.022331'
      ,params: {'key':'key'},
      success: (data){
        print(data.toString());
      },
      error: (error){
        print(error.errorCode);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('tab1'),
            bottom: TabBar(
                controller: _tabController,
                tabs: tabs.map((e) => Tab(text: e)).toList())),

        body: TabBarView(children: _listController,controller: _tabController,),
      ),

    );
  }
}
