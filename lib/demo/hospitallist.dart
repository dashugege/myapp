import 'package:flutter/material.dart';
import 'package:myapp/api/DioManager.dart';
import 'package:myapp/api/apihelps.dart';
import 'package:myapp/entity/hospital_list_entity.dart';

class HospitalListWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {

    return _HospitalListWidgetState();
  }
}

class _HospitalListWidgetState extends State<HospitalListWidget> {
  List<Dphospital> dphospital;

  @override
  void initState() {
    super.initState();
    dphospital = [];
    _getHospitalList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('机构列表'),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                        dphospital[index].icon,
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(dphospital[index].nameCn),
                          Text(dphospital[index].type),
                          Text(dphospital[index].address),
                          Text('面部轮廊' +
                              dphospital[index].hospitalPidCnt +
                              dphospital[index].yuyueStandardStr),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.grey,
                height: 0.5,
              );
            },
            itemCount: dphospital.length),
      ),
    );
  }



  _getHospitalList(){
    ApiHelps().postHospitalList((success) => {
      setState(() {
        dphospital = success.responseData.dphospital;
      })
    });
  }
}
