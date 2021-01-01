class UserModel {
  int id;
  int busiID;
  int recommandID;
  String userName;
  String nickName;
  String telePhone;
  String sCode; //不知道是做什么用的
  String eMail;
  String password;
  String avatar;
  String token;

  UserModel({
    this.id,
    this.busiID,
    this.recommandID,
    this.userName,
    this.nickName,
    this.telePhone,
    this.sCode,
    this.eMail,
    this.password,
    this.avatar,
    this.token,
  });

  static UserModel getUserModelWithUserInfo(Map userInfo) {
    UserModel userModel = UserModel();
    if (userInfo != null) {
      userModel.id = userInfo["id"];
      userModel.busiID = userInfo["busi_id"];
      userModel.recommandID = userInfo["recommand_id"];
      userModel.userName = userInfo["user_name"];
      userModel.nickName = userInfo["nick_name"];
      userModel.telePhone = userInfo["telphone"];
      userModel.sCode = userInfo["s_code"];
      userModel.eMail = userInfo["email"] != null ? userInfo["email"] : "";
      userModel.avatar = userInfo["avatar"] != null ? userInfo["avatar"] : "";
      userModel.token = userInfo["token"];
      userModel.password = userInfo["password"];
    }
    return userModel;
  }

  Map toJson() {
    Map map = new Map();
    map["id"] = this.id;
    map["busi_id"] = this.busiID;
    map["recommand_id"] = this.recommandID;
    map["user_name"] = this.userName;
    map["nick_name"] = this.nickName;
    map["telphone"] = this.telePhone;
    map["s_code"] = this.sCode;
    map["email"] = this.eMail;
    map["avatar"] = this.avatar;
    map["token"] = this.token;
    map["password"] = this.password;
    return map;
  }
}
