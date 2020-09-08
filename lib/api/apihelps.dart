import 'package:myapp/api/DioManager.dart';
import 'package:myapp/entity/hospital_list_entity.dart';
//import 'package:myapp/entity/hospitallistenrity.dart';
import 'dart:convert';


class ApiHelps {


  Future<HospitalListEntity> getHospitalList() async{

    var response =  await DioManager.getInstance().get(
          'https://api.soyoung.com/v8/hospitals/list?device_model=HUAWEI-JKM-AL00b&lver=8.8.3&range=20&cityId=1&vistor_uid=0&sys=2&uuid=5742ebf3ae54a0f9&uid=20103627&menu2_id=0&calendar_type=3&sdk_version=28&gps_city_id=1&_time=1599557931&app_id=2&lat=40.022299&device_id=145&lng=116.468803&select_city_id=1&item_id=0&index=0&xy_token=5fc3a034aeff0f6755cce07c348dc59d&_sign=%242a%2405%244Xqyln1dCAeaa4WWvIcUW.ijp3.GX16xdKL6sTVlsxl6EEMggbLCG&pinyin=beta&device_os_version=9&menu1_id=10021&xy_device_token=87b00157b2ba87452fd3b9e637ee2bc966&ab_id=5AD7DD48F30F900665F4FC1B61B222AF&request_id=3df1ea879deb9c51abea13724df33188'
        , null);
    HospitalListEntity hospitalListEntity = HospitalListEntity.fromJson(json.decode(response.data));
    return hospitalListEntity ;
  }


}