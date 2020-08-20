class BaseEntity<T> {
  int errorCode;
  String errorMsg;
  T data;

  BaseEntity({this.errorCode, this.errorMsg, this.data});

  factory BaseEntity.fromJson(Map<String, dynamic> json) {
    if(json['errorCode'] == 0){
      return BaseEntity(
        errorCode: json['errorCode'],
        errorMsg: json['errorMsg'],
        data: json['responseData'] as T ,
      );
    }else{
      return BaseEntity(
        errorCode: json['errorCode'],
        errorMsg: json['errorMsg'],
      );
    }

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['responseData'] = this.data;
    }
    data['errorCode'] = this.errorCode;
    data['errorMsg'] = this.errorMsg;
    return data;
  }
}
