import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class QuestioneMarked extends StatelessWidget {
  String img = "images/next_page_grey.png";
  final List data;
  List question = [];

  QuestioneMarked({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black12,
          ),
        ),
        title: Text(
          "问题收藏",
          style: TextStyle(color: Colors.black, fontSize: 32.sp),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return _record(index, context);
          },
          itemCount: data.length),
    );
  }

  Widget _record(int index, BuildContext context) {
    return GestureDetector(
        onTap: () {
          //
        },
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 126.h,
              alignment: Alignment.centerLeft,
              child: ListTile(
                title: Row(
                  children: [
                    Text(
                      "${index + 1}、 ",
                      style: TextStyle(fontSize: 28.sp),
                    ),
                  ],
                ),
                trailing: Image.asset(
                  img,
                  width: 32.w,
                  height: 32.h,
                ),
              ),
            ),
            Container(
              width: 691.w,
              height: 2.h,
              // color: Colors.black12,
            ),
          ],
        ));
  }
}
