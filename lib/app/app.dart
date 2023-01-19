import 'dart:async';
import 'package:catalogue_management/route/router.dart';
import 'package:catalogue_management/ui/login/presentation/login_page.dart';
import 'package:cm_common/generated/l10n.dart';
import 'package:cm_common/global.dart';
import 'package:cm_common/route/navigator_service.dart';
import 'package:cm_common/route/router_path.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Locale? _locale;
  dynamic navRouteData;
  double defaultTxtScaleFactor = 1.0;
  double largerTxtScaleFactor = 1.3;
  final double _uiWidth = 375;
  final double _uiHeight = 812;
  @override
  void initState() {
    super.initState();

    _locale = Global.getInstance().locale;
    // _initialRoute();
  }

  @override
  Widget build(BuildContext context) {
    ///Initializing screen Util
    ScreenUtil.init(context);
    return _appWidget(context);
  }

  _appWidget(BuildContext context) {
    return ScreenUtilInit(
      ///Initializing the screen with the common height and width
      designSize: Size(_uiWidth, _uiHeight),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowMaterialGrid: false,
          locale: _locale,
          localeResolutionCallback:
              (Locale? locale, Iterable<Locale> supportedLocales) {
            return _locale;
          },
          theme: ThemeData.light()
          // .copyWith(
          //   scaffoldBackgroundColor: bgColor,
          //   textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          //       .apply(bodyColor: Colors.white),
          //   canvasColor: secondaryColor,
          // )
          ,
          initialRoute: RouterPath.DASHBOARD,
          navigatorKey: NavigateService.key,
          onGenerateRoute: AppRouter.generateRoute,
          debugShowCheckedModeBanner: false,
          supportedLocales: S.delegate.supportedLocales,
          localizationsDelegates: const [
            S.delegate,
          ],
        );
      },
    );
  }

  // _initialRoute() {
  //   ///Initial Navigation to Dashboard Screen
  //   Future.delayed(const Duration(milliseconds: 10), () {
  //     NavigateService.pushNamedRoute(RouterPath.LOGIN);
  //   });
  // }
}
