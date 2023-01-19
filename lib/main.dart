import 'dart:async';
import 'dart:io';

import 'package:cm_common/global.dart';
import 'package:cm_common/route/navigator_service.dart';
import 'package:cm_network/api_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'App/app.dart';

final getIt = GetIt.instance;
void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    getIt.allowReassignment = true;
    final prefs = await SharedPreferences.getInstance();
    await Global.init(prefs);
    setupNavigateService();
    ApiConfig.init(APIFlavor.dev);
    runApp(ProviderScope(
      child: App(
        key: appGlobalKey,
      ),
    ));
  }, (error, stack) => debugPrint(error.toString()));
  // _statusBarSetup();
}

void _statusBarSetup() {
  if (Platform.isAndroid) {
    SystemUiOverlayStyle style = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(style);
  } else if (Platform.isIOS) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }
}

void setupNavigateService() {
  getIt.registerSingleton(NavigateService());
}
