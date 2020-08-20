
class ErrorEntity {
  int errorCode;
  String errorMsg;
  ErrorEntity({this.errorCode, this.errorMsg});

  factory ErrorEntity.fromJson(Map<String, dynamic> json) {
    return ErrorEntity(
      errorCode: json['errorCode'],
      errorMsg: json['errorMsg'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['errorCode'] = this.errorCode;
    data['errorMsg'] = this.errorMsg;
    return data;
  }
}