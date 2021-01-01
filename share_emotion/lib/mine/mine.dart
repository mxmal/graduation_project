import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:share_emotion/self_check/questioned_marked.dart';

import 'myinfo_change.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MinePageState();
  }
}

class _MinePageState extends State<MinePage> {
  List<String> img = [
        "images/kaoshi_jilu@2x.png",
        "images/lianxi_jilu@2x.png",
        "images/shiti_shoucang@2x.png",
        "images/xuexi_baogao@2x.png"
      ],
      na = ["考试记录", "练习记录", "试题收藏", "学习报告"];
  String name = "请登录";
  String job = "";
  StreamSubscription _subscription;

  @override
  void initState() {
    super.initState();
    // _subscription = eventBus.on<LogoutEvent>().listen((event) {
    //   name = '请登录';
    //   setState(() {});
    // });
    initAccount();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  Future<bool> initAccount() async {
    // Map data = await LocalSave.getLoginUser();
    // print("data:$data");
    // if (data != null) {
    //   print("${data["nick_name"]}");
    //   name = data["nick_name"];
    //   setState(() {
    //
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 360.h,
            width: double.infinity,
            color: Colors.blue,
            padding:
                EdgeInsets.only(left: 38.w, top: 0.0, right: 0.0, bottom: 0.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // if (name == "请登录") {
                          //   AppUtil.pushToLogin(context);
                          // } else {
                          //   List data = [context, AccountInfo(name: name,)];
                          //   AppUtil.pageRoute(data);
                          // }
                        },
                        child: Container(
                          width: 125.w,
                          height: 125.w,
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 40.w, 0.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                // image: AssetImage("images/zgabg_open.png"),
                                image: AssetImage("images/default_avatar.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(1000),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AccountInfo()));
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                name,
                                style: TextStyle(
                                    fontSize: 32.sp, color: Colors.white),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                job,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                      width: ScreenUtil().setWidth(145),
                      height: ScreenUtil().setHeight(100),
                      child: IconButton(
                        padding: EdgeInsets.all(0.0),
                        icon: Image.asset("images/zhanghao_xinxi@2x.png"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AccountInfo()));
                        },
                      ))
                ],
              ),
            ),
          ),
          _bodyItem1(),
          _bodyItem2(),
        ],
      ),
    );
  }

  Widget _bodyItem1() {
    return Transform.translate(
        offset: Offset(0.0, -100.h),
        child: SizedBox(
          height: 159.h,
          width: 690.w,
          // height: 100,
          child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0)),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  // 背景色
                  // color: Colors.yellow,
                  // // 边框，
                  border: Border.all(color: Colors.white, width: 1.w),
                  borderRadius: BorderRadius.all(//圆角
                      Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myContainer(img[0], "回复记录"),
                    myContainer(img[1], "游戏记录"),
                    myContainer(img[2], "观看记录"),
                    myContainer(img[3], "我的记录")
                  ],
                ),
              )),
        ));
  }

  Widget myContainer(String imagpath, String name) {
    return GestureDetector(
      onTap: () async {
        // Map<String, dynamic> data = await LocalSave.getLoginUser();
        // if (data == null) {
        //   showDialog<Null>(
        //     context: context,
        //     barrierDismissible: false,
        //     builder: (BuildContext context) {
        //       return myDialog(context);
        //     },
        //   );
        //
        // } else {
          if (name == na[0]) {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>QuestioneMarked()));

          } else if (name == na[1]) {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>QuestioneMarked()));
          } else if (name == na[2]) {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>QuestioneMarked()));
          } else {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>QuestioneMarked()));
          }
        // }
      },
      child: Container(
          height: ScreenUtil().setHeight(150),
          width: ScreenUtil().setWidth(100),
          alignment: Alignment.center,
          color: Colors.white,
          child: Container(
            height: ScreenUtil().setHeight(100),
            // color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                  image: AssetImage(imagpath),
                  width: ScreenUtil().setWidth(42),
                  height: ScreenUtil().setHeight(40),
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 24.sp),
                )
              ],
            ),
          )),
    );
  }

  Widget _bodyItem2() {
    return Transform.translate(
      offset: Offset(0.0, -100.h),
      child: Container(
        // height: 491.h,
        width: 690.w,
        child: Card(
          elevation: 0.0,
          // color: Colors.red,
          child: Column(
            children: [
              myList("images/about_us@2x.png", "关注"),
              myList("images/share@2x.png", "收藏"),
              myList("images/refresh@2x.png", "好友列表"),
              myList("images/refresh@2x.png", "意见反馈 "),
              myList("images/set@2x.png", "设置"),
            ],
          ),
        ),
      ),
    );
  }

  Widget myList(String imagepath, String name) {
    return Container(
      height: 115.h,
      width: 690.w,
      padding: EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          // if (name == '关于我们') {
          //   if (GlobalConfig.platform == 'iOS') {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (BuildContext context) => AboutUs()),
          //     );
          //   } else {
          //     Navigator.push(context, CustomRoute(AboutUs()));
          //   }
          // } else if (name == '分享好友') {
          //   Share.share('https://www.baidu.com');
          // }
        },
        child: Container(
          // color: Colors.red,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(51.0.w, 0, 0, 0),
                      child: Image.asset(
                        imagepath,
                        width: 37.w,
                        height: 37.h,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(32.w, 0, 0, 0),
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 28.sp),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Image.asset("images/next_page_grey@2x.png",
                    width: 32.w, height: 32.h),
              ),
            ],
          ),
        ),
      ),
    );
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
              "未登录",
              style: TextStyle(fontSize: 34.sp, color: Colors.black),
            )),
            Container(
              // margin: EdgeInsets.only(top: 24.h),
              child: Text(
                "确定前往登录界面吗？",
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
                    onTap: () {
                      //退出清除本地数据
                      // AppUtil.pushToLogin(context);
                    },
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
}
