import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDialog extends StatelessWidget {
  String info, imagePath;
  String text;
  MyDialog({this.info, this.imagePath, this.text});
  @override
  Widget build(BuildContext context) {
    return showAlertDialog(context);
  }

  Widget showAlertDialog(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(22.0))),
      contentPadding: EdgeInsets.all(0.0),
      content: Container(
        decoration: new BoxDecoration(
          //背景
          color: Colors.white,
          //设置四周圆角 角度
          borderRadius: BorderRadius.all(Radius.circular(22.0)),
          //设置四周边框
          border: new Border.all(width: 1, color: Colors.black38),
        ),
        padding: EdgeInsets.all(0),
        height: 342.h,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 79.h),
              child: Image.asset(
                imagePath,
                width: 72.w,
                height: 72.h,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24.h),
              child: Text(
                info,
                style: TextStyle(fontSize: 24.sp, color: Colors.black38),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60.h),
              height: 1.h,
              color: Colors.black12,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    //背景
                    color: Colors.white,
                    //设置四周圆角 角度
                    borderRadius: BorderRadius.all(Radius.circular(22.0)),
                    //设置四周边框
                  ),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 22.sp, color: Colors.blue),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
