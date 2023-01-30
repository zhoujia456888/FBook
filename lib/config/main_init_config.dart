import 'package:easy_refresh/easy_refresh.dart';
import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easylogger/flutter_logger.dart';

import '../utils/app_config_utils.dart';


class MainInitConfig {
  static initAppConfig() async {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setPreferredOrientations([
      // 强制竖屏
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    ///初始化SpUtil
    await SpUtil.getInstance();

    //debugPaintSizeEnabled = true; //是否显示布局边界

    ///设置Logger内容
    Logger.init(
      !AppConfigUtils.isProduct(), // isEnable ，if production ，please false //开发环境开启，生产环境关闭
      isShowFile: false,
      // In the IDE, whether the file name is displayed
      isShowTime: true,
      // In the IDE, whether the time is displayed
      isShowNavigation: true,
      // In the IDE, When clicked, it jumps to the printed file details page
      levelVerbose: 247,
      // In the IDE, Set the color //https://github.com/niezhiyang/flutter_logger/blob/master/art/colors.png
      levelDebug: 39,
      levelInfo: 10,
      levelWarn: 226,
      levelError: 9,
      phoneVerbose: Colors.white54,
      // In your phone or web，, Set the color
      phoneDebug: Colors.blue,
      phoneInfo: Colors.green,
      phoneWarn: Colors.yellow,
      phoneError: Colors.redAccent,
    );

    ///设置状态栏颜色
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    /// 全局设置下拉刷新Header 和 Footer
    EasyRefresh.defaultHeaderBuilder = () => const PhoenixHeader();
    EasyRefresh.defaultFooterBuilder = () => const PhoenixFooter();

  }
}
