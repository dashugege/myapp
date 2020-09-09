
class BaseEntity {
  int errorCode;
  String errorMsg;

  BaseEntity({this.errorCode, this.errorMsg});

  factory BaseEntity.fromJson(Map<String, dynamic> json) {
    return BaseEntity(
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
