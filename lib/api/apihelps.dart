import 'package:myapp/api/DioManager.dart';
import 'package:myapp/entity/hospital_list_entity.dart';
import 'dart:convert';


class ApiHelps {





  postHospitalList(Function(HospitalListEntity) success) async{
    await DioManager.getInstance().get(
        'https://api.soyoung.com/v8/hospitals/list?device_model=HUAWEI-JKM-AL00b&lver=8.8.3&range=20&cityId=1&vistor_uid=0&sys=2&uuid=5742ebf3ae54a0f9&uid=20103627&menu2_id=0&calendar_type=3&sdk_version=28&gps_city_id=1&_time=1599622270&app_id=2&lat=40.022321&device_id=145&lng=116.468815&select_city_id=1&item_id=0&index=0&xy_token=5fc3a034aeff0f6755cce07c348dc59d&_sign=%242a%2405%242Gqs4fNviFCzAvsCwSamUO9djATa0DcKsNHki1BOIMagDhjTZKizm&pinyin=beta&device_os_version=9&menu1_id=10021&xy_device_token=97b00157b2ba87452fd3b9e637ee2bc969&ab_id=CEE2B4B92BA5DF6802643CA3C814AB50&request_id=434208c7b34d6b1bd2b889ecf1e31561'
        ,null, (result) => {
      success(HospitalListEntity.fromJson(result))
    }, (error) => {

    });

  }

}