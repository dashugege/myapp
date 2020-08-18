import 'package:dio/dio.dart';
import 'BaseEntity.dart';
import 'ErrorEntity.dart';

//  https://juejin.im/post/6844903708757590024

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
      BaseOptions options = new BaseOptions(
        baseUrl: "http://www.soyoung.com/",
        contentType: 'application/json',
        responseType: ResponseType.json,
        sendTimeout: 20000,
        connectTimeout: 20000,
        receiveTimeout: 20000,
      );
      _dio = Dio(options);
    }
  }

  Future post<T>(String path,
      {Map params, Function(T) success, Function(ErrorEntity) error}) async {
    try {
      Response response = await _dio.post(path,queryParameters: params);
      if (response != null) {
        BaseEntity entity = BaseEntity<T>.fromJson(response.data);
        if (entity.code == 0) {
          success(entity.data);
        } else {
          error(ErrorEntity(code: entity.code, message: entity.message));
        }
      } else {
        error(ErrorEntity(code: -1, message: "未知错误"));
      }
    } on DioError catch (error) {
      if (error != null) {
        int errCode = error.response.statusCode;
        String errMsg = error.response.statusMessage;
        return ErrorEntity(code: errCode, message: errMsg);
      }
    }
  }

}
