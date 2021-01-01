import 'dart:async';

// import 'package:ev_questionbank/util/event_bus.dart';
// import 'package:ev_questionbank/util/localsave.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountInfo extends StatefulWidget {
  final String name;
  AccountInfo({this.name});
  @override
  State<StatefulWidget> createState() {
    return _AccountInfoState();
  }
}

class _AccountInfoState extends State<AccountInfo> {
  var name = ["我的昵称", "我的微信", "清除缓存"];
  String imagePath = "images/next_page_grey@2x.png";
  StreamSubscription _logOutSub;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _logOutSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
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
          title: Text(
            "账号信息",
            style: TextStyle(fontSize: 32.sp, color: Colors.black),
          ),
        ),
        body: Container(
          // color: Colors.white70,
          child: Column(
            children: [
              _myListTitle(name[0], "修改", imagePath),
              Container(
                width: ScreenUtil().setWidth(691),
                height: ScreenUtil().setHeight(1),
                color: Color(0xEEEEEE),
              ),
              Container(
                child: ListTile(
                    title: Text(
                      "我的账号",
                      style: TextStyle(fontSize: 28.sp),
                    ),
                    tileColor: Colors.white,
                    trailing: Expanded(
                      child: Text(
                        "widget.name",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24.sp),
                      ),
                    )),
              ),
              Container(
                width: ScreenUtil().setWidth(691),
                height: ScreenUtil().setHeight(1),
                color: Color(0xEEEEEE),
              ),
              _myListTitle(name[1], "绑定", imagePath),
              Container(
                width: ScreenUtil().setWidth(750),
                height: ScreenUtil().setHeight(12),
                color: Color(0xEEEEEE),
              ),
              _myListTitle(name[2], " ", imagePath),
              Container(
                height: ScreenUtil().setHeight(67),
              ),
              GestureDetector(
                onTap: () {
                  showDialog<Null>(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return myDialog(context);
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.blue,
                  ),
                  width: ScreenUtil().setWidth(691),
                  height: ScreenUtil().setHeight(88),
                  alignment: Alignment.center,
                  child: Text(
                    "退出登录",
                    style: TextStyle(fontSize: 28.sp, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget myDialog(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(0.0),
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        // color: Colors.yellow,

        padding: EdgeInsets.all(0),
        width: 750.w,
        height: 300.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                child: Text(
              "确认退出",
              style: TextStyle(fontSize: 34.sp, color: Colors.black),
            )),
            Container(
              // margin: EdgeInsets.only(top: 24.h),
              child: Text(
                "确定退出登录吗？",
                style: TextStyle(
                    fontSize: 24.sp, color: Color.fromRGBO(102, 102, 102, 1)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    // color: Colors.red,
                    width: 230.w,
                    height: 73.h,
                    alignment: Alignment.center,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.black12,
                    ),
                    child: Text(
                      "取消",
                      style: TextStyle(fontSize: 28.sp, color: Colors.black),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 230.w,
                      height: 73.h,

                      // color: Colors.greenAccent,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.blue,
                      ),
                      child: Text(
                        "确定",
                        style: TextStyle(fontSize: 28.sp, color: Colors.white),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _myListTitle(String name, String data, String imagpath) {
    return GestureDetector(
      onTap: () {
        if (name == "修改") {
          print(name);
        }
      },
      child: Container(
        child: ListTile(
          title: Text(
            name,
            style: TextStyle(fontSize: 28.sp),
          ),
          tileColor: Colors.white,
          trailing: Container(
              width: ScreenUtil().setWidth(100),
              height: ScreenUtil().setHeight(50),
              // color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(data,
                      style: TextStyle(
                          color: (imagpath != " ") ? Colors.blue : Colors.black,
                          fontSize: 24.sp)),
                  Image.asset(imagpath, width: 32.w, height: 32.h)
                ],
              )),
        ),
      ),
    );
  }
}
