// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospital_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HospitalListEntity _$HospitalListEntityFromJson(Map<String, dynamic> json) {
  return HospitalListEntity(
    json['errorCode'] as int,
    json['errorMsg'] as String,
    json['responseData'] == null
        ? null
        : ResponseData.fromJson(json['responseData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HospitalListEntityToJson(HospitalListEntity instance) =>
    <String, dynamic>{
      'errorCode': instance.errorCode,
      'errorMsg': instance.errorMsg,
      'responseData': instance.responseData,
    };

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  return ResponseData(
    json['version'] as String,
    json['total'] as String,
    json['has_more'] as String,
    (json['dphospital'] as List)
        ?.map((e) =>
            e == null ? null : Dphospital.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['name'] as String,
    (json['xingxuan'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
    <String, dynamic>{
      'version': instance.version,
      'total': instance.total,
      'has_more': instance.hasMore,
      'dphospital': instance.dphospital,
      'name': instance.name,
      'xingxuan': instance.xingxuan,
    };

Dphospital _$DphospitalFromJson(Map<String, dynamic> json) {
  return Dphospital(
    json['hospital_id'] as String,
    json['certified'] as String,
    json['certified_id'] as String,
    json['address'] as String,
    json['name_cn'] as String,
    json['icon'] as String,
    json['institution_type'] as String,
    json['status'] as String,
    json['service_type'] as String,
    json['high_percent'] as String,
    json['avatar'] == null
        ? null
        : Avatar.fromJson(json['avatar'] as Map<String, dynamic>),
    json['type'] as String,
    json['hospital_pid_cnt'] as String,
    json['star'] as String,
    json['dianping_average_score'] as String,
    json['calendar_group_cnt'] as String,
    json['cloud_yn'] as String,
    (json['item_arr_hot'] as List)
        ?.map((e) =>
            e == null ? null : Item_arr_hot.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['comment_cnt'] as String,
    (json['award'] as List)
        ?.map(
            (e) => e == null ? null : Award.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['service_tel_flag'] as String,
    json['service_tel'] as String,
    json['score_day'] as String,
    json['yuyue_standard_str'] as String,
    json['hot_cnt'] as String,
    (json['products'] as List)
        ?.map((e) =>
            e == null ? null : Products.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['no_certified_department'] as List,
    json['getBrandCertify'] as String,
    json['juli'] as String,
    json['shrinkStatus'] as String,
    json['iMenu1Id'] as String,
    json['iMenu2Id'] as String,
    json['iItemId'] as String,
    json['is_xingxuan'] as String,
    json['yuyue_standard_cnt_str'] as String,
  );
}

Map<String, dynamic> _$DphospitalToJson(Dphospital instance) =>
    <String, dynamic>{
      'hospital_id': instance.hospitalId,
      'certified': instance.certified,
      'certified_id': instance.certifiedId,
      'address': instance.address,
      'name_cn': instance.nameCn,
      'icon': instance.icon,
      'institution_type': instance.institutionType,
      'status': instance.status,
      'service_type': instance.serviceType,
      'high_percent': instance.highPercent,
      'avatar': instance.avatar,
      'type': instance.type,
      'hospital_pid_cnt': instance.hospitalPidCnt,
      'star': instance.star,
      'dianping_average_score': instance.dianpingAverageScore,
      'calendar_group_cnt': instance.calendarGroupCnt,
      'cloud_yn': instance.cloudYn,
      'item_arr_hot': instance.itemArrHot,
      'comment_cnt': instance.commentCnt,
      'award': instance.award,
      'service_tel_flag': instance.serviceTelFlag,
      'service_tel': instance.serviceTel,
      'score_day': instance.scoreDay,
      'yuyue_standard_str': instance.yuyueStandardStr,
      'hot_cnt': instance.hotCnt,
      'products': instance.products,
      'no_certified_department': instance.noCertifiedDepartment,
      'getBrandCertify': instance.getBrandCertify,
      'juli': instance.juli,
      'shrinkStatus': instance.shrinkStatus,
      'iMenu1Id': instance.iMenu1Id,
      'iMenu2Id': instance.iMenu2Id,
      'iItemId': instance.iItemId,
      'is_xingxuan': instance.isXingxuan,
      'yuyue_standard_cnt_str': instance.yuyueStandardCntStr,
    };

Avatar _$AvatarFromJson(Map<String, dynamic> json) {
  return Avatar(
    json['ident'] as String,
    json['zoom'] as String,
    json['w'] as String,
    json['h'] as String,
    json['u'] as String,
  );
}

Map<String, dynamic> _$AvatarToJson(Avatar instance) => <String, dynamic>{
      'ident': instance.ident,
      'zoom': instance.zoom,
      'w': instance.w,
      'h': instance.h,
      'u': instance.u,
    };

Item_arr_hot _$Item_arr_hotFromJson(Map<String, dynamic> json) {
  return Item_arr_hot(
    json['menu1_id'] as String,
    json['menu1_name'] as String,
    json['ordercount'] as String,
    json['yuyue_standard_str'] as String,
  );
}

Map<String, dynamic> _$Item_arr_hotToJson(Item_arr_hot instance) =>
    <String, dynamic>{
      'menu1_id': instance.menu1Id,
      'menu1_name': instance.menu1Name,
      'ordercount': instance.ordercount,
      'yuyue_standard_str': instance.yuyueStandardStr,
    };

Award _$AwardFromJson(Map<String, dynamic> json) {
  return Award(
    json['award_title'] as String,
    json['award_url'] as String,
    json['award_type'] as String,
  );
}

Map<String, dynamic> _$AwardToJson(Award instance) => <String, dynamic>{
      'award_title': instance.awardTitle,
      'award_url': instance.awardUrl,
      'award_type': instance.awardType,
    };

Products _$ProductsFromJson(Map<String, dynamic> json) {
  return Products(
    json['pid'] as String,
    json['title'] as String,
    json['order_cnt'] as String,
    json['price_online'] as String,
    json['is_vip'] as String,
    json['is_vip_user'] as String,
    json['vip_price_online'] as String,
    json['yuyue_standard_str'] as String,
  );
}

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'pid': instance.pid,
      'title': instance.title,
      'order_cnt': instance.orderCnt,
      'price_online': instance.priceOnline,
      'is_vip': instance.isVip,
      'is_vip_user': instance.isVipUser,
      'vip_price_online': instance.vipPriceOnline,
      'yuyue_standard_str': instance.yuyueStandardStr,
    };
