import 'package:fbook/config/router_pages.dart';
import 'package:fbook/res/theme_data_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

import '../config/main_init_config.dart';
import '../config/router_page_name.dart';

void main() async{
  await MainInitConfig.initAppConfig();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            title: 'FBook',
            debugShowCheckedModeBanner: false,
            builder: FlutterSmartDialog.init(builder: (context, home) {
              return MediaQuery(
                ///Setting font does not change with system font size
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: GestureDetector(
                    onTap: () {
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      }
                      //隐藏键盘
                      SystemChannels.textInput.invokeMethod('TextInput.hide');
                    },
                    child: home),
              );
            }),
            initialRoute: RouterPageName.splashPage,
            theme: ThemeDataResources.defaultThemeData,
            defaultTransition: Transition.fade,
            getPages: RouterPages.getPages,
            home: child,
            //解决复制粘贴是英文的问题
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('zh', 'CN'),
            ],
          );
        });
  }
}
