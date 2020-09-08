import 'package:dio/dio.dart';

class DioLogInterceptor extends Interceptor {
  @override
  Future onRequest(RequestOptions options) async {
//    print("REQUEST[${options?.method}] => PATH: ${options?.path}");
    return options;
  }

  @override
  Future onError(DioError err) async {
    print("ERROR[${err?.response?.statusCode}] => PATH: ${err?.request?.path}");
    return err;
  }

  @override
  Future onResponse(Response response) async {
    print("RESPONSE[${response?.statusCode}] => PATH: ${response?.request?.path}");
    return response;
  }
}
