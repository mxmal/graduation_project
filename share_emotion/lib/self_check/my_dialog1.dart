import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDialog1 extends StatelessWidget {
  String info, imagePath;
  String text1, text2;
  MyDialog1({this.info, this.imagePath, this.text1, this.text2});
  @override
  Widget build(BuildContext context) {
    return showAlertDialog1(context);
  }

  Widget showAlertDialog1(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(0.0),
      content: Container(
        padding: EdgeInsets.all(0),
        width: 700.w,
        height: 342.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.0),
          color: Colors.white,
        ),
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
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      color: Colors.white,
                      width: 250.w,
                      height: 73.h,
                      alignment: Alignment.center,
                      child: Text(
                        text1,
                        style:
                            TextStyle(fontSize: 22.sp, color: Colors.black12),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 1.w,
                  height: 73.h,
                  color: Colors.black12,
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 250.w,
                    height: 73.h,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Text(
                      text2,
                      style: TextStyle(fontSize: 22.sp, color: Colors.blue),
                    ),
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
