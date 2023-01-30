import '../pages/home/view.dart';
import '../pages/mine/view.dart';
import '../pages/splash/view.dart';
import '../pages/tab_navigator/view.dart';
import 'router_page_name.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RouterPages {
  ///*别名映射页面**************/

  static List<GetPage> getPages = <GetPage>[
    ///启动页
    GetPage(name: RouterPageName.splashPage, page: () => SplashPage()),

    ///Tab页面
    GetPage(name: RouterPageName.tabNavigatorPage, page: () => TabNavigatorPage()),

    ///首页
    GetPage(name: RouterPageName.homePage, page: () => HomePage()),

    ///我的
    GetPage(name: RouterPageName.minePage, page: () => MinePage()),
  ];
}
