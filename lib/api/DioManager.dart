import 'dart:io';

import 'package:dio/dio.dart';
import 'package:myapp/api/DioLogInterceptor.dart';
import 'BaseEntity.dart';
import 'ErrorEntity.dart';
import 'dart:convert';

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
          'User-Agent':'dio',
          'Connection':'keep-alive',
          'Content-Type':'application/json; charset=utf-8',
          'Access-Control-Allow-Origin':'*',
          'Access-Control-Allow-Headers': 'X-Requested-With',
      }
      );
      _dio.interceptors.add(DioLogInterceptor());
    }
  }

  Future post<T>(String path,
      {Map params, Function(T) success, Function(ErrorEntity) error}) async {
    try {
      Response response = await _dio.post(path, queryParameters: params);
      if (response != null && response.statusCode == HttpStatus.ok) {
        BaseEntity entity = BaseEntity<T>.fromJson(json.decode(response.data));
        if (entity.errorCode == 0) {
          success(json.decode(entity.data));
        } else {
          error(ErrorEntity(
              errorCode: entity.errorCode, errorMsg: entity.errorMsg));
        }
      } else {
        error(ErrorEntity(
            errorCode: response.statusCode, errorMsg: 'unknow exception'));
      }
    } catch (err) {
      error(ErrorEntity(errorCode: -1, errorMsg: err.toString()));
    }
  }

  Future get<T>(String path,
      {Map params, Function(T) success, Function(ErrorEntity) error}) async {
    try {
      Response response = await _dio.get(path, queryParameters: params);
      if (response != null && response.statusCode == HttpStatus.ok) {
        BaseEntity entity = BaseEntity<T>.fromJson(json.decode(response.data));
        if (entity.errorCode == 0) {
          success(json.decode(entity.data));
        } else {
          error(ErrorEntity(
              errorCode: entity.errorCode, errorMsg: entity.errorMsg));
        }
      } else {
        error(ErrorEntity(
            errorCode: response.statusCode, errorMsg: 'unknow exception'));
      }
    } catch (err) {
      error(ErrorEntity(errorCode: -1, errorMsg: err.toString()));
    }
  }
}
