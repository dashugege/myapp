import 'dart:io';

import 'package:dio/dio.dart';
import 'package:myapp/api/DioLogInterceptor.dart';

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

  Future<Response> get(
    String url,
    Map<String, dynamic> params,
  ) async {
    try {
      return await _dio.get(url, queryParameters: params);
    } on DioError catch (e) {
      if (e == null) {
        return Future.error(Response(data: -1));
      } else if (e.response != null) {
        if (e.response.statusCode >= 300 && e.response.statusCode < 400) {
          return Future.error(Response(data: -1));
        } else {
          return Future.value(e.response);
        }
      } else {
        return Future.error(Response(data: -1));
      }
    }
  }

  Future<Response> post(
      String url,
      Map<String, dynamic> params,
      ) async {
    try {
      return await _dio.post(url, queryParameters: params);
    } on DioError catch (e) {
      if (e == null) {
        return Future.error(Response(data: -1));
      } else if (e.response != null) {
        if (e.response.statusCode >= 300 && e.response.statusCode < 400) {
          return Future.error(Response(data: -1));
        } else {
          return Future.value(e.response);
        }
      } else {
        return Future.error(Response(data: -1));
      }
    }
  }
}
