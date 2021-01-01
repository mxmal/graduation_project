import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySummary extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MySummaryState();
  }
}

class MySummaryState extends State<MySummary> {
  final List<int> showIndexes = const [0, 1, 2, 3, 4, 5, 6, 7];
  double mysize = 24.0.sp;
  List<Color> gradientColors = [
    const Color(0xEEF1FF),
    // const Color(0xff02d39a),
  ];
  List<Color> gradientColors1 = [
    const Color(0x0486FE),
    // const Color(0xff02d39a),
  ];
  List<Color> gradientColors2 = [
    const Color(0xFFFFFF),
    // const Color(0xff02d39a),
  ];
  bool selected1 = true, selected2 = false, selected3 = true, selected4 = false;
  int year = 2020, month = 1, day = 1;
  int k = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "我的报告",
          style: TextStyle(fontSize: 32.sp, color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black12,
          ),
        ),
      ),
      body: Column(
        children: [
          _dateSeletc(),
          _cateSelect("练习", "考试"),
          Container(
            width: 751.w,
            height: 2.h,
            color: Colors.black12,
          ),
          _numberQuestion(),
          Container(
            width: 751.w,
            height: 2.h,
            color: Colors.black12,
          ),
          _cateSelect1("正确率趋势", "答题数趋势"),
          Container(
            width: 751.w,
            height: 10.h,
            color: Colors.black12,
          ),
          Container(
            // color: Colors.red,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(30.0.w, 16.0.h, 0.0, 0.0),
            child: Text(
              "最近8周趋势",
              style: TextStyle(
                fontSize: 24.sp,
                color: Colors.black38,
              ),
            ),
          ),
          _charpter()
        ],
      ),
    );
  }

  Widget _dateSeletc() {
    return Container(
      // color: Colors.red,
      margin: EdgeInsets.fromLTRB(0.0, 30.h, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                // color:Colors.red,
                margin: EdgeInsets.fromLTRB(30.w, 0.0, 0.0, 0.0),
                child: Text(
                  "$year年",
                  style: TextStyle(fontSize: 32.sp),
                ),
              ),
              Container(
                // color: Colors.greenAccent,
                margin: EdgeInsets.fromLTRB(20.w, 0.0, 0.0, 0.0),
                child: Text(
                  "$month月$day日~$month月$day日",
                  style: TextStyle(fontSize: 24.sp),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 30.0.w, 0.0),
            child: Image.asset(
              "images/chakan_answer.png",
              width: 36.w,
              height: 36.h,
            ),
          )
        ],
      ),
    );
  }

  Widget _cateSelect(String name1, String name2) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.0, 40.0.h, 0.0, 0.0),
      // color: Colors.red,
      child: Row(
        children: [
          _showRecommendItem(name1, selected1),
          _showRecommendItem(name2, selected2),
        ],
      ),
    );
  }

  Widget _showRecommendItem(String name, bool se) {
    return GestureDetector(
        onTap: () {
          if (name == "练习") {
            setState(() {
              selected1 = true;
              selected2 = false;
            });
          } else {
            setState(() {
              selected2 = true;
              selected1 = false;
            });
          }
        },
        child: Container(
            margin: EdgeInsets.fromLTRB(30.0.w, 0.0, 0.0, 0.0),
            // height: ScreenUtil().setHeight(50),

            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0.h),
                  // width: ScreenUtil().setWidth(110),
                  height: ScreenUtil().setHeight(40),
                  // color: Colors.red,
                  // alignment: Alignment(0.0, -1.5),
                  alignment: Alignment.centerLeft,
                  // color: Colors.white,
                  child: Text(
                    "$name",
                    style: TextStyle(
                        color: (se == true) ? Colors.blue : Colors.black38,
                        fontSize: ScreenUtil().setSp(28)),
                  ),
                ),

                /*  Container(
              height:ScreenUtil().setHeight(2) ,
            ),*/
                _smallContainer(se)
              ],
            )));
  }

  Widget _cateSelect1(String name1, String name2) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.0, 30.0.h, 0.0, 0.0),
      // color: Colors.red,
      child: Row(
        children: [
          _showRecommendItem1(name1, selected3),
          _showRecommendItem2(name2, selected4),
        ],
      ),
    );
  }

  Widget _showRecommendItem1(String name, bool se) {
    return GestureDetector(
        onTap: () {
          if (name == "正确率趋势") {
            setState(() {
              selected3 = true;
              selected4 = false;
            });
          } else {
            setState(() {
              selected3 = false;
              selected4 = true;
            });
          }
        },
        child: Container(
            margin: EdgeInsets.fromLTRB(30.0.w, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0.h),

                  height: ScreenUtil().setHeight(40),
                  alignment: Alignment.centerLeft,
                  // color: Colors.white,
                  child: Text(
                    "$name",
                    style: TextStyle(
                        color: (se == true) ? Colors.blue : Colors.black38,
                        fontSize: ScreenUtil().setSp(28)),
                  ),
                ),

                /*  Container(
              height:ScreenUtil().setHeight(2) ,
            ),*/
                _smallContainer(se)
              ],
            )));
  }

  Widget _showRecommendItem2(String name, bool se) {
    return GestureDetector(
        onTap: () {
          if (name == "正确率趋势") {
            setState(() {
              selected3 = true;
              selected4 = false;
            });
          } else {
            setState(() {
              selected3 = false;
              selected4 = true;
            });
          }
        },
        child: Container(
            margin: EdgeInsets.fromLTRB(60.0.w, 0.0, 0.0, 0.0),
            // height: ScreenUtil().setHeight(50),

            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0.h),
                  // width: ScreenUtil().setWidth(110),
                  height: ScreenUtil().setHeight(40),
                  // color: Colors.red,
                  // alignment: Alignment(0.0, -1.5),
                  alignment: Alignment.centerLeft,
                  // color: Colors.white,
                  child: Text(
                    "$name",
                    style: TextStyle(
                        color: (se == true) ? Colors.blue : Colors.black38,
                        fontSize: ScreenUtil().setSp(28)),
                  ),
                ),

                /*  Container(
              height:ScreenUtil().setHeight(2) ,
            ),*/
                _smallContainer(se)
              ],
            )));
  }

  Widget _smallContainer(bool se) {
    if (se == true) {
      return Container(
          width: ScreenUtil().setWidth(55),
          height: ScreenUtil().setHeight(2),
          color: Colors.blue);
    } else {
      return Container(
        width: ScreenUtil().setWidth(55),
        height: ScreenUtil().setHeight(2),
      );
    }
  }

  Widget _numberQuestion() {
    return Container(
      height: 250.0.h,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // color: Colors.red,
            margin: EdgeInsets.fromLTRB(124.0.w, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$k",
                  style: TextStyle(fontSize: 78.sp, color: Colors.blue),
                ),
                Text("答题量(道)")
              ],
            ),
          ),
          Container(
            // color: Colors.greenAccent,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 124.0.w, 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$k",
                  style: TextStyle(fontSize: 78.sp, color: Colors.blue),
                ),
                Text("准确率(道)")
              ],
            ),
          )
        ],
      ),
    );
  }

  String change(double y) {
    if (y >= 0.0 && y <= 1.0) {
      print("${(100.0 * y).toInt()}%");
      return "${(100.0 * y).toInt()}%";
    } else {
      return "数据错误";
    }
  }

  Widget _charpter() {
    List<FlSpot> spots1 = [
      FlSpot(1, 1.0),
      FlSpot(2, 0.1),
      FlSpot(3, 1.0),
      FlSpot(4, 0.01),
      FlSpot(5, 1.0),
      FlSpot(6, 0),
      FlSpot(7, 0),
      FlSpot(8, 0),
    ];

    final lineBarsData = [
      LineChartBarData(
        showingIndicators: showIndexes,
        spots: spots1,
        colors: gradientColors1.map((color) => color.withOpacity(0.3)).toList(),
        belowBarData: BarAreaData(
          show: true,
          colors:
              gradientColors.map((color) => color.withOpacity(0.3)).toList(),
        ),
        dotData: FlDotData(
          show: false,
        ),
      ),
    ];
    final LineChartBarData tooltipsOnBar = lineBarsData[0];

    return Container(
      // color: Colors.red,
      margin: EdgeInsets.only(top: 50.0.h),
      width: 640.w,
      height: 200.h,
      child: LineChart(
        LineChartData(
            showingTooltipIndicators: showIndexes.map((index) {
              return ShowingTooltipIndicators(index, [
                LineBarSpot(tooltipsOnBar, lineBarsData.indexOf(tooltipsOnBar),
                    tooltipsOnBar.spots[index]),
              ]);
            }).toList(),
            lineTouchData: LineTouchData(
              enabled: false,
              getTouchedSpotIndicator:
                  (LineChartBarData barData, List<int> spotIndexes) {
                return spotIndexes.map((index) {
                  return TouchedSpotIndicatorData(
                    FlLine(
                      color: Color(0xEEF1FF),
                    ),
                    FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) =>
                          FlDotCirclePainter(
                        radius: 2,
                        color: Colors.white,
                        strokeWidth: 3.w,
                        strokeColor: Colors.blue,
                      ),
                    ),
                  );
                }).toList();
              },
              touchTooltipData: LineTouchTooltipData(
                tooltipBgColor: Colors.transparent,
                tooltipBottomMargin: 15.0.h,
                tooltipPadding: EdgeInsets.fromLTRB(3.0.w, 2.0.h, 3.0.w, 2.0.h),
                getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                  return lineBarsSpot.map((lineBarSpot) {
                    return LineTooltipItem(
                      change(lineBarSpot.y),
                      TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp),
                    );
                  }).toList();
                },
              ),
            ),
            gridData: FlGridData(
              show: false,
            ),
            lineBarsData: lineBarsData,
            borderData: FlBorderData(
                show: false,
                border: Border.all(color: const Color(0xff37434d), width: 1)),
            titlesData: FlTitlesData(
              show: true,
              leftTitles: SideTitles(showTitles: false),
              bottomTitles: SideTitles(
                  showTitles: true,
                  getTitles: (val) {
                    switch (val.toInt()) {
                      case 1:
                        return '1';
                      case 2:
                        return '2';
                      case 3:
                        return '3';
                      case 4:
                        return '4';
                      case 5:
                        return '5';
                      case 6:
                        return '6';
                      case 7:
                        return '7';
                      case 8:
                        return '上周';
                    }
                    return '';
                  },
                  getTextStyles: (value) => TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black26,
                        fontFamily: 'Digital',
                        fontSize: 24.0.sp,
                      )),
            )),
      ),
    );
  }
}
