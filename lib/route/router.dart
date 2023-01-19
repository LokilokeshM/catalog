import 'package:catalogue_management/ui/dashboard/presentation/dashboard.dart';
import 'package:catalogue_management/ui/login/presentation/login_page.dart';
import 'package:cm_common/route/router_path.dart';
import 'package:cm_core_ui/ui/product/presentation/product_page.dart';
import 'package:flutter/material.dart';

///App routing Navigation
class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterPath.DASHBOARD:
        return MaterialPageRoute(builder: (_) => const Dashboard());
      case RouterPath.PRODUCT_DETAILS:
        return MaterialPageRoute(builder: (_) => const ProductPage());
      case RouterPath.LOGIN:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case RouterPath.LOADING:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(child: CircularProgressIndicator()),
                ));
      default:
        return defaultRoute(settings);
    }
  }

  ///Default route when the App loads
  static MaterialPageRoute defaultRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => _loadingPage(),
    );
  }

  ///Sample loading screen
  ///Need to add some Shimmer Widget
  static _loadingPage() {
    return Container();
  }
}
