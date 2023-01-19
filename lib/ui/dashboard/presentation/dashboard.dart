import 'dart:html';

import 'package:catalogue_management/ui/dashboard/application/application.dart';
import 'package:catalogue_management/ui/dashboard/presentation/widgets/header.dart';
import 'package:cm_common/enum/enums.dart';
import 'package:cm_common/responsive.dart';
import 'package:cm_core_ui/ui/overview/presentation/overview_page.dart';
import 'package:cm_core_ui/ui/product/presentation/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widgets/end_menu.dart';
import 'widgets/side_menu.dart';

class Dashboard extends ConsumerWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screens = ref.watch(dashboardScreenProvider);
    return Scaffold(
        // key: context.read<MenuController>().scaffoldKey,
        drawer: SideMenu(),
        endDrawer: const EndMenuPage(),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // We want this side menu only for large screen
              if (Responsive.isDesktop(context))
                Expanded(
                  // default flex = 1
                  // and it takes 1/6 part of the screen
                  child: SideMenu(),
                ),

              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const Expanded(child: Header()),
                      Expanded(
                        flex: 10,
                        child: screens.when(
                          screen: (DashboardEnum dashboardEnum) {
                            switch (dashboardEnum) {
                              case DashboardEnum.OVER_VIEW:
                                return const OverviewPage();
                              case DashboardEnum.ORDER:
                                return Container();
                              case DashboardEnum.PRODUCT:
                                return const ProductPage();
                              default:
                                return Container();
                            }
                            ;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
