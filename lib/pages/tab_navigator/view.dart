import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../res/color_resources.dart';
import 'logic.dart';

class TabNavigatorPage extends StatelessWidget {
  TabNavigatorPage({Key? key}) : super(key: key);

  final logic = Get.put(TabNavigatorLogic());

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return Obx(
      () => Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            //viewPage禁止左右滑动
            onPageChanged: _pageChange,
            controller: controller,
            itemCount: logic.pageList.length,
            itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(
                    bottom: 10.h,
                  ),
                  child: logic.pageList[logic.selectIndex],
                )),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          selectedFontSize: 12.sp,
          unselectedFontSize: 10.sp,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
                color: ColorResources.textBlack,
              ),
              activeIcon: const Icon(
                Icons.home,
                color: ColorResources.accentColor,
              ),
              label: logic.titles[0],
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.person,
                color: ColorResources.textBlack,
              ),
              activeIcon: const Icon(
                Icons.person,
                color: ColorResources.accentColor,
              ),
              label: logic.titles[1],
            ),
          ],
          currentIndex: logic.selectIndex,
          selectedItemColor: ColorResources.textBlack,
          onTap: (i) => logic.selectIndex = i,
        ),
      ),
    );
  }

  void _pageChange(int index) {
    if (index != logic.selectIndex) {
      logic.selectIndex = index;
    }
  }
}
