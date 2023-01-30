import 'package:get/get.dart';

import '../../config/router_page_name.dart';

class SplashLogic extends GetxController {
  @override
  void onReady() {
    super.onReady();
    intoApp();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //进入App
  intoApp() async {
    await Future.delayed(const Duration(milliseconds: 1000), () {
      Get.offAndToNamed(RouterPageName.tabNavigatorPage);
    });
  }
}
