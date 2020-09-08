import 'package:json_annotation/json_annotation.dart'; 
  
part 'hospital_list_entity.g.dart';


@JsonSerializable()
  class HospitalListEntity extends Object {

  @JsonKey(name: 'errorCode')
  int errorCode;

  @JsonKey(name: 'errorMsg')
  String errorMsg;

  @JsonKey(name: 'responseData')
  ResponseData responseData;

  HospitalListEntity(this.errorCode,this.errorMsg,this.responseData,);

  factory HospitalListEntity.fromJson(Map<String, dynamic> srcJson) => _$HospitalListEntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$HospitalListEntityToJson(this);

}

  
@JsonSerializable()
  class ResponseData extends Object {

  @JsonKey(name: 'version')
  String version;

  @JsonKey(name: 'total')
  String total;

  @JsonKey(name: 'has_more')
  String hasMore;

  @JsonKey(name: 'dphospital')
  List<Dphospital> dphospital;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'xingxuan')
  List<String> xingxuan;

  ResponseData(this.version,this.total,this.hasMore,this.dphospital,this.name,this.xingxuan,);

  factory ResponseData.fromJson(Map<String, dynamic> srcJson) => _$ResponseDataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);

}

  
@JsonSerializable()
  class Dphospital extends Object {

  @JsonKey(name: 'hospital_id')
  String hospitalId;

  @JsonKey(name: 'certified')
  String certified;

  @JsonKey(name: 'certified_id')
  String certifiedId;

  @JsonKey(name: 'address')
  String address;

  @JsonKey(name: 'name_cn')
  String nameCn;

  @JsonKey(name: 'icon')
  String icon;

  @JsonKey(name: 'institution_type')
  String institutionType;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'service_type')
  String serviceType;

  @JsonKey(name: 'high_percent')
  String highPercent;

  @JsonKey(name: 'avatar')
  Avatar avatar;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'hospital_pid_cnt')
  String hospitalPidCnt;

  @JsonKey(name: 'star')
  String star;

  @JsonKey(name: 'dianping_average_score')
  String dianpingAverageScore;

  @JsonKey(name: 'calendar_group_cnt')
  String calendarGroupCnt;

  @JsonKey(name: 'cloud_yn')
  String cloudYn;

  @JsonKey(name: 'item_arr_hot')
  List<Item_arr_hot> itemArrHot;

  @JsonKey(name: 'comment_cnt')
  String commentCnt;

  @JsonKey(name: 'award')
  List<Award> award;

  @JsonKey(name: 'service_tel_flag')
  String serviceTelFlag;

  @JsonKey(name: 'service_tel')
  String serviceTel;

  @JsonKey(name: 'score_day')
  String scoreDay;

  @JsonKey(name: 'yuyue_standard_str')
  String yuyueStandardStr;

  @JsonKey(name: 'hot_cnt')
  String hotCnt;

  @JsonKey(name: 'products')
  List<Products> products;

  @JsonKey(name: 'no_certified_department')
  List<dynamic> noCertifiedDepartment;

  @JsonKey(name: 'getBrandCertify')
  String getBrandCertify;

  @JsonKey(name: 'juli')
  String juli;

  @JsonKey(name: 'shrinkStatus')
  String shrinkStatus;

  @JsonKey(name: 'iMenu1Id')
  String iMenu1Id;

  @JsonKey(name: 'iMenu2Id')
  String iMenu2Id;

  @JsonKey(name: 'iItemId')
  String iItemId;

  @JsonKey(name: 'is_xingxuan')
  String isXingxuan;

  @JsonKey(name: 'yuyue_standard_cnt_str')
  String yuyueStandardCntStr;

  Dphospital(this.hospitalId,this.certified,this.certifiedId,this.address,this.nameCn,this.icon,this.institutionType,this.status,this.serviceType,this.highPercent,this.avatar,this.type,this.hospitalPidCnt,this.star,this.dianpingAverageScore,this.calendarGroupCnt,this.cloudYn,this.itemArrHot,this.commentCnt,this.award,this.serviceTelFlag,this.serviceTel,this.scoreDay,this.yuyueStandardStr,this.hotCnt,this.products,this.noCertifiedDepartment,this.getBrandCertify,this.juli,this.shrinkStatus,this.iMenu1Id,this.iMenu2Id,this.iItemId,this.isXingxuan,this.yuyueStandardCntStr,);

  factory Dphospital.fromJson(Map<String, dynamic> srcJson) => _$DphospitalFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DphospitalToJson(this);

}

  
@JsonSerializable()
  class Avatar extends Object {

  @JsonKey(name: 'ident')
  String ident;

  @JsonKey(name: 'zoom')
  String zoom;

  @JsonKey(name: 'w')
  String w;

  @JsonKey(name: 'h')
  String h;

  @JsonKey(name: 'u')
  String u;

  Avatar(this.ident,this.zoom,this.w,this.h,this.u,);

  factory Avatar.fromJson(Map<String, dynamic> srcJson) => _$AvatarFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AvatarToJson(this);

}

  
@JsonSerializable()
  class Item_arr_hot extends Object {

  @JsonKey(name: 'menu1_id')
  String menu1Id;

  @JsonKey(name: 'menu1_name')
  String menu1Name;

  @JsonKey(name: 'ordercount')
  String ordercount;

  @JsonKey(name: 'yuyue_standard_str')
  String yuyueStandardStr;

  Item_arr_hot(this.menu1Id,this.menu1Name,this.ordercount,this.yuyueStandardStr,);

  factory Item_arr_hot.fromJson(Map<String, dynamic> srcJson) => _$Item_arr_hotFromJson(srcJson);

  Map<String, dynamic> toJson() => _$Item_arr_hotToJson(this);

}

  
@JsonSerializable()
  class Award extends Object {

  @JsonKey(name: 'award_title')
  String awardTitle;

  @JsonKey(name: 'award_url')
  String awardUrl;

  @JsonKey(name: 'award_type')
  String awardType;

  Award(this.awardTitle,this.awardUrl,this.awardType,);

  factory Award.fromJson(Map<String, dynamic> srcJson) => _$AwardFromJson(srcJson);

  Map<String, dynamic> toJson() => _$AwardToJson(this);

}

  
@JsonSerializable()
  class Products extends Object {

  @JsonKey(name: 'pid')
  String pid;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'order_cnt')
  String orderCnt;

  @JsonKey(name: 'price_online')
  String priceOnline;

  @JsonKey(name: 'is_vip')
  String isVip;

  @JsonKey(name: 'is_vip_user')
  String isVipUser;

  @JsonKey(name: 'vip_price_online')
  String vipPriceOnline;

  @JsonKey(name: 'yuyue_standard_str')
  String yuyueStandardStr;

  Products(this.pid,this.title,this.orderCnt,this.priceOnline,this.isVip,this.isVipUser,this.vipPriceOnline,this.yuyueStandardStr,);

  factory Products.fromJson(Map<String, dynamic> srcJson) => _$ProductsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ProductsToJson(this);

}

  
