import 'package:myapp/entity/list_entity.dart';

listEntityFromJson(ListEntity data, Map<String, dynamic> json) {
	if (json['unread_msg'] != null) {
		data.unreadMsg = json['unread_msg']?.toString();
	}
	if (json['total_msg'] != null) {
		data.totalMsg = json['total_msg']?.toString();
	}
	if (json['login_name'] != null) {
		data.loginName = json['login_name']?.toString();
	}
	if (json['kefu_status'] != null) {
		data.kefuStatus = json['kefu_status']?.toString();
	}
	if (json['reply_list'] != null) {
		data.replyList = new List<ListReplyList>();
		(json['reply_list'] as List).forEach((v) {
			data.replyList.add(new ListReplyList().fromJson(v));
		});
	}
	if (json['uid_list'] != null) {
		data.uidList = new List<dynamic>();
		data.uidList.addAll(json['uid_list']);
	}
	if (json['list'] != null) {
		data.xList = new List<ListList>();
		(json['list'] as List).forEach((v) {
			data.xList.add(new ListList().fromJson(v));
		});
	}
	if (json['division'] != null) {
		data.division = json['division']?.toString();
	}
	if (json['division_tips'] != null) {
		data.divisionTips = json['division_tips']?.toString();
	}
	if (json['showTips'] != null) {
		data.showTips = json['showTips']?.toString();
	}
	return data;
}

Map<String, dynamic> listEntityToJson(ListEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['unread_msg'] = entity.unreadMsg;
	data['total_msg'] = entity.totalMsg;
	data['login_name'] = entity.loginName;
	data['kefu_status'] = entity.kefuStatus;
	if (entity.replyList != null) {
		data['reply_list'] =  entity.replyList.map((v) => v.toJson()).toList();
	}
	if (entity.uidList != null) {
		data['uid_list'] =  [];
	}
	if (entity.xList != null) {
		data['list'] =  entity.xList.map((v) => v.toJson()).toList();
	}
	data['division'] = entity.division;
	data['division_tips'] = entity.divisionTips;
	data['showTips'] = entity.showTips;
	return data;
}

listReplyListFromJson(ListReplyList data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['reply_type'] != null) {
		data.replyType = json['reply_type']?.toString();
	}
	if (json['check_yn'] != null) {
		data.checkYn = json['check_yn']?.toString();
	}
	return data;
}

Map<String, dynamic> listReplyListToJson(ListReplyList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['reply_type'] = entity.replyType;
	data['check_yn'] = entity.checkYn;
	return data;
}

listListFromJson(ListList data, Map<String, dynamic> json) {
	if (json['source_tag'] != null) {
		data.sourceTag = json['source_tag']?.toString();
	}
	if (json['tag'] != null) {
		data.tag = new List<dynamic>();
		data.tag.addAll(json['tag']);
	}
	if (json['send_msg_yn'] != null) {
		data.sendMsgYn = json['send_msg_yn']?.toString();
	}
	if (json['notice'] != null) {
		data.notice = json['notice']?.toString();
	}
	if (json['uid'] != null) {
		data.uid = json['uid']?.toString();
	}
	if (json['hx_id'] != null) {
		data.hxId = json['hx_id']?.toString();
	}
	if (json['uid_xy_token'] != null) {
		data.uidXyToken = json['uid_xy_token']?.toString();
	}
	if (json['avatar'] != null) {
		data.avatar = new ListListAvatar().fromJson(json['avatar']);
	}
	if (json['user_name'] != null) {
		data.userName = json['user_name']?.toString();
	}
	if (json['user_type'] != null) {
		data.userType = json['user_type']?.toString();
	}
	if (json['youke_yn'] != null) {
		data.youkeYn = json['youke_yn']?.toString();
	}
	if (json['content'] != null) {
		data.content = json['content']?.toString();
	}
	if (json['time'] != null) {
		data.time = json['time']?.toString();
	}
	if (json['create_date'] != null) {
		data.createDate = json['create_date']?.toString();
	}
	if (json['msg_cnt'] != null) {
		data.msgCnt = json['msg_cnt']?.toString();
	}
	if (json['inverse_date'] != null) {
		data.inverseDate = json['inverse_date']?.toString();
	}
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	if (json['send_type'] != null) {
		data.sendType = json['send_type']?.toString();
	}
	if (json['favorite_yn'] != null) {
		data.favoriteYn = json['favorite_yn']?.toString();
	}
	if (json['sys'] != null) {
		data.sys = json['sys']?.toString();
	}
	if (json['app_id'] != null) {
		data.appId = json['app_id']?.toString();
	}
	if (json['host_yn'] != null) {
		data.hostYn = json['host_yn']?.toString();
	}
	if (json['real'] != null) {
		data.real = new ListListReal().fromJson(json['real']);
	}
	if (json['is_top'] != null) {
		data.isTop = json['is_top']?.toString();
	}
	if (json['is_deny'] != null) {
		data.isDeny = json['is_deny']?.toString();
	}
	if (json['qualification'] != null) {
		data.qualification = json['qualification']?.toString();
	}
	if (json['avatar_boder'] != null) {
		data.avatarBoder = json['avatar_boder']?.toString();
	}
	if (json['follow_up'] != null) {
		data.followUp = json['follow_up']?.toString();
	}
	if (json['is_consult'] != null) {
		data.isConsult = json['is_consult']?.toString();
	}
	return data;
}

Map<String, dynamic> listListToJson(ListList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['source_tag'] = entity.sourceTag;
	if (entity.tag != null) {
		data['tag'] =  [];
	}
	data['send_msg_yn'] = entity.sendMsgYn;
	data['notice'] = entity.notice;
	data['uid'] = entity.uid;
	data['hx_id'] = entity.hxId;
	data['uid_xy_token'] = entity.uidXyToken;
	if (entity.avatar != null) {
		data['avatar'] = entity.avatar.toJson();
	}
	data['user_name'] = entity.userName;
	data['user_type'] = entity.userType;
	data['youke_yn'] = entity.youkeYn;
	data['content'] = entity.content;
	data['time'] = entity.time;
	data['create_date'] = entity.createDate;
	data['msg_cnt'] = entity.msgCnt;
	data['inverse_date'] = entity.inverseDate;
	data['type'] = entity.type;
	data['send_type'] = entity.sendType;
	data['favorite_yn'] = entity.favoriteYn;
	data['sys'] = entity.sys;
	data['app_id'] = entity.appId;
	data['host_yn'] = entity.hostYn;
	if (entity.real != null) {
		data['real'] = entity.real.toJson();
	}
	data['is_top'] = entity.isTop;
	data['is_deny'] = entity.isDeny;
	data['qualification'] = entity.qualification;
	data['avatar_boder'] = entity.avatarBoder;
	data['follow_up'] = entity.followUp;
	data['is_consult'] = entity.isConsult;
	return data;
}

listListAvatarFromJson(ListListAvatar data, Map<String, dynamic> json) {
	if (json['ident'] != null) {
		data.ident = json['ident']?.toString();
	}
	if (json['w'] != null) {
		data.w = json['w']?.toString();
	}
	if (json['h'] != null) {
		data.h = json['h']?.toString();
	}
	if (json['u'] != null) {
		data.u = json['u']?.toString();
	}
	return data;
}

Map<String, dynamic> listListAvatarToJson(ListListAvatar entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ident'] = entity.ident;
	data['w'] = entity.w;
	data['h'] = entity.h;
	data['u'] = entity.u;
	return data;
}

listListRealFromJson(ListListReal data, Map<String, dynamic> json) {
	return data;
}

Map<String, dynamic> listListRealToJson(ListListReal entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	return data;
}