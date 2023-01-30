import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'logic.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final logic = Get.put(HomeLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            '首页',
            style: TextStyle(fontSize: 16.sp),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0),
      body: Container(
        margin: EdgeInsets.only(bottom: 50.h),
        child:EasyRefresh(
          controller: logic.easyRefreshController,
          onRefresh: logic.onRefresh,
          onLoad: logic.onLoad,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 250.h,
                  width: 375.w,
                  child: Text('首页'),
                ),

              ],
            ),
          ),
        ) ,
      )
      ,
    );
  }
}
