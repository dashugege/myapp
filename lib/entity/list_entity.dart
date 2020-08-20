import 'package:myapp/generated/json/base/json_convert_content.dart';
import 'package:myapp/generated/json/base/json_field.dart';

class ListEntity with JsonConvert<ListEntity> {
	@JSONField(name: "unread_msg")
	String unreadMsg;
	@JSONField(name: "total_msg")
	String totalMsg;
	@JSONField(name: "login_name")
	String loginName;
	@JSONField(name: "kefu_status")
	String kefuStatus;
	@JSONField(name: "reply_list")
	List<ListReplyList> replyList;
	@JSONField(name: "uid_list")
	List<dynamic> uidList;
	@JSONField(name: "list")
	List<ListList> xList;
	String division;
	@JSONField(name: "division_tips")
	String divisionTips;
	String showTips;
}

class ListReplyList with JsonConvert<ListReplyList> {
	String name;
	@JSONField(name: "reply_type")
	String replyType;
	@JSONField(name: "check_yn")
	String checkYn;
}

class ListList with JsonConvert<ListList> {
	@JSONField(name: "source_tag")
	String sourceTag;
	List<dynamic> tag;
	@JSONField(name: "send_msg_yn")
	String sendMsgYn;
	String notice;
	String uid;
	@JSONField(name: "hx_id")
	String hxId;
	@JSONField(name: "uid_xy_token")
	String uidXyToken;
	ListListAvatar avatar;
	@JSONField(name: "user_name")
	String userName;
	@JSONField(name: "user_type")
	String userType;
	@JSONField(name: "youke_yn")
	String youkeYn;
	String content;
	String time;
	@JSONField(name: "create_date")
	String createDate;
	@JSONField(name: "msg_cnt")
	String msgCnt;
	@JSONField(name: "inverse_date")
	String inverseDate;
	String type;
	@JSONField(name: "send_type")
	String sendType;
	@JSONField(name: "favorite_yn")
	String favoriteYn;
	String sys;
	@JSONField(name: "app_id")
	String appId;
	@JSONField(name: "host_yn")
	String hostYn;
	ListListReal real;
	@JSONField(name: "is_top")
	String isTop;
	@JSONField(name: "is_deny")
	String isDeny;
	String qualification;
	@JSONField(name: "avatar_boder")
	String avatarBoder;
	@JSONField(name: "follow_up")
	String followUp;
	@JSONField(name: "is_consult")
	String isConsult;
}

class ListListAvatar with JsonConvert<ListListAvatar> {
	String ident;
	String w;
	String h;
	String u;
}

class ListListReal with JsonConvert<ListListReal> {

}
