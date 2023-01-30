import 'package:fbook/pages/home/view.dart';
import 'package:fbook/pages/mine/view.dart';
import 'package:get/get.dart';

class TabNavigatorLogic extends GetxController {

  var titles = ['首页', '我的'];

  final _selectIndex = 0.obs; //
  get selectIndex => _selectIndex.value; //
  set selectIndex(val) => _selectIndex.value = val; //

  final _pageList = [HomePage(), MinePage()].obs; //
  get pageList => _pageList.value; //
  set pageList(val) => _pageList.value = val; //

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
