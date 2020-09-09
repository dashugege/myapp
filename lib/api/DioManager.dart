import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:myapp/api/DioLogInterceptor.dart';
import 'package:myapp/api/baseentity.dart';

class DioManager {
  static DioManager _instance;

  factory DioManager.getInstance() => _getInstance();

  static _getInstance() {
    if (_instance == null) {
      _instance = DioManager._internal();
    }
    return _instance;
  }

  Dio _dio;

  DioManager._internal() {
    if (_dio == null) {
      _dio = Dio();
      _dio.options = new BaseOptions(
          baseUrl: "http://www.soyoung.com/",
          contentType: 'application/json',
          responseType: ResponseType.json,
          sendTimeout: 20000,
          connectTimeout: 20000,
          receiveTimeout: 20000,
          headers: {
            'User-Agent': 'dio',
            'Connection': 'keep-alive',
            'Content-Type': 'application/json; charset=utf-8',
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Headers': 'X-Requested-With',
          });
      _dio.interceptors.add(DioLogInterceptor());
    }
  }



  Future get(
      String url,
      Map<String, dynamic> params,
      Function(Map<String, dynamic>) success,
      Function(Map<String, dynamic>) error) async {
    try {
      Response response = await _dio.get(url, queryParameters: params);
      Map<String, dynamic> resultMap = json.decode(response.data);
      BaseEntity baseEntity = BaseEntity.fromJson(resultMap);
      if(baseEntity.errorCode == 0){
        success(resultMap);
      }
    } on DioError catch (e) {
      var map = Map();
      map['errorCode'] = 500;
      map['errorMsg'] = 'net error';
      if (e.response != null) {
        if (e.response.statusCode != 0) {
          map['errorCode'] = e.response.statusCode;
        }
      }
      error(map);
    }
  }
}
