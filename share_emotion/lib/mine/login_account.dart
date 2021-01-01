// import 'package:ev_questionbank/http/request.dart';
// import 'package:ev_questionbank/main_tab.dart';
// import 'package:ev_questionbank/util/encryption.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginAccountState();
  }
}

class LoginAccountState extends State<LoginAccount> {
  bool passwordVisible;
  String text = "";
  String text1 = "", text2 = "";
  TextEditingController _editingController = new TextEditingController();
  TextEditingController _editingController1 = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    passwordVisible = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black26,
            size: 34.0.sp,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: ScreenUtil().setWidth(750),
            child: Column(
              children: [
                Container(
                  // color:Colors.red,
                  child: Text(
                    "您好\n欢迎登录EV题库宝",
                    style: TextStyle(fontSize: 44.sp),
                  ),

                  width: ScreenUtil().setWidth(600),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(0.0, 82.0.h, 0.0, 0.0),
                    // color: Colors.red,
                    width: ScreenUtil().setWidth(600),
                    height: ScreenUtil().setHeight(80),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                              style: TextStyle(
                                fontSize: 28.sp,
                              ),
                              controller: _editingController,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(10.0),
                                  hintText: '请输入账号',
                                  hintStyle: TextStyle(
                                      fontSize: 28.sp, color: Colors.black26)),
                              onChanged: (value) {
                                setState(() {
                                  text1 = value;
                                });
                              }),
                        ),
                        Offstage(
                            offstage: text1.isEmpty ? true : false,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _editingController.clear();
                                  text1 = _editingController.text;
                                });
                              },
                              child: Container(
                                width: ScreenUtil().setWidth(50),
                                child: Icon(Icons.cancel),
                              ),
                            ))
                      ],
                    )),
                Container(
                  width: ScreenUtil().setWidth(600),
                  height: ScreenUtil().setHeight(1),
                  color: Colors.black26,
                ),
                Container(
                    width: ScreenUtil().setWidth(600),
                    height: ScreenUtil().setHeight(80),
                    // color: Colors.red,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                              fontSize: 28.sp,
                            ),
                            controller: _editingController1,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10.0),
                                hintText: '请输入密码',
                                hintStyle: TextStyle(
                                    fontSize: 28.sp, color: Colors.black26)),
                            onChanged: (value) {
                              setState(() {
                                text2 = value;
                              });
                            },
                            obscureText: passwordVisible,
                          ),
                        ),
                        Offstage(
                            offstage: text2.isEmpty ? true : false,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  passwordVisible = !passwordVisible;
                                });
                              },
                              child: Container(
                                width: ScreenUtil().setWidth(50),
                                child: Image.asset(passwordVisible == true
                                    ? "images/login_noteye.png"
                                    : "images/login_eye.png"),
                              ),
                            ))
                      ],
                    )),
                Container(
                  width: ScreenUtil().setWidth(614),
                  height: ScreenUtil().setHeight(1),
                  color: Colors.black12,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // color: Colors.blue,
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(0, 166, 255, 1),
                        Color.fromRGBO(1, 100, 255, 1)
                      ]),
                    ),
                    margin: EdgeInsets.all(20.0),
                    width: ScreenUtil().setWidth(600),
                    height: ScreenUtil().setHeight(82),
                    alignment: Alignment.center,
                    child: Text(
                      "登 录",
                      style: TextStyle(color: Colors.white, fontSize: 28.sp),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(400),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset(
                        "images/login_wx.png",
                        height: ScreenUtil().setHeight(76),
                        width: ScreenUtil().setWidth(76),
                      ),
                      Text(
                        "微信登录",
                        style: TextStyle(color: Colors.grey, fontSize: 20.sp),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "登录即代表您已同意我们的",
                        style: TextStyle(
                            fontSize: 20.0.sp,
                            color: Color.fromRGBO(153, 153, 153, 1)),
                      ),
                      Text(
                        "《用户协议》",
                        style: TextStyle(fontSize: 20.0.sp, color: Colors.blue),
                      ),
                      Text(
                        "和",
                        style: TextStyle(
                            fontSize: 20.0.sp,
                            color: Color.fromRGBO(153, 153, 153, 1)),
                      ),
                      Text(
                        "《隐私政策》",
                        style: TextStyle(fontSize: 20.0.sp, color: Colors.blue),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
