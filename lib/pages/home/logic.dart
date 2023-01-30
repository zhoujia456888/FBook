import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';

class HomeLogic extends GetxController {
  EasyRefreshController easyRefreshController = EasyRefreshController(
    controlFinishRefresh: true,
    controlFinishLoad: true,
  );



  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {
      easyRefreshController.finishRefresh();
      easyRefreshController.resetFooter();
    });
  }

  onLoad() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {

        easyRefreshController.finishLoad(IndicatorResult.noMore);

    });
  }
}
