import 'package:myapp/api/DioManager.dart';
import 'package:myapp/entity/hospital_list_entity.dart';
import 'dart:convert';


class ApiHelps {





  postHospitalList(Function(HospitalListEntity) success) async{
    await DioManager.getInstance().get(
        'https://api.soyoung.com/v8/hospitals/list?device_model=HUAWEI-JKM-AL00b&lver=8.9.0&range=20&cityId=1&vistor_uid=0&sys=2&uuid=5742ebf3ae54a0f9&uid=1678383&menu2_id=0&calendar_type=3&sdk_version=28&gps_city_id=1&_time=1600052209&app_id=2&lat=40.022294&device_id=145&lng=116.468787&select_city_id=1&item_id=0&index=0&xy_token=539786b060f2b532f1971ab7e8dce3a4&_sign=%242a%2405%24Eg9v4au%2FqUHzVuMrxDRZzemv7c..O0uzwiu5SJXyHUVXQ8vic%2FA0.&pinyin=beta&device_os_version=9&menu1_id=10001&xy_device_token=37b00157b2ba87452fd3b9e637ee2bc966&ab_id=D114DFCCF0B1D13DA2D9EAAEA6218B11&request_id=9cbfaacffe9dae6e46797dffaf8acb02'
        ,null, (result) => {
      success(HospitalListEntity.fromJson(result))
    }, (error) => {

    });

  }

}