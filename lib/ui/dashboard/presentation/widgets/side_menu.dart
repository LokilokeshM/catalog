import 'package:cm_common/enum/enums.dart';
import 'package:cm_network_implementation/entity/order_list_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../application/application.dart';

class SideMenu extends ConsumerWidget {
  SideMenu({
    Key? key,
  }) : super(key: key);
  // Function(String title) onPress;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.network(
                "https://cdn.shopify.com/s/files/1/0565/1903/2987/files/Aardae_New__logo_0457b547-6e39-4043-855e-5d5c113b1b02.png?v=1662414181"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "packages/cm_common/assets/icons/menu_dashbord.svg",
            press: () {
              ref
                  .watch(dashboardScreenProvider.notifier)
                  .findAction(dashboardEnum: DashboardEnum.OVER_VIEW);
            },
          ),
          DrawerListTile(
            title: "Products",
            svgSrc: "packages/cm_common/assets/icons/menu_tran.svg",
            press: () {
              ref
                  .watch(dashboardScreenProvider.notifier)
                  .findAction(dashboardEnum: DashboardEnum.PRODUCT);
            },
          ),
          DrawerListTile(
            title: "Orders",
            svgSrc: "packages/cm_common/assets/icons/menu_task.svg",
            press: () {
              ref
                  .watch(dashboardScreenProvider.notifier)
                  .findAction(dashboardEnum: DashboardEnum.ORDER);
            },
          ),
          DrawerListTile(
            title: "Marketing Center",
            svgSrc: "packages/cm_common/assets/icons/menu_doc.svg",
            press: () {},
          ),
          // DrawerListTile(
          //   title: "",
          //   svgSrc: "assets/icons/menu_store.svg",
          //   press: () {},
          // ),
          // DrawerListTile(
          //   title: "Notification",
          //   svgSrc: "assets/icons/menu_notification.svg",
          //   press: () {
          //   },
          // ),
          // DrawerListTile(
          //   title: "Profile",
          //   svgSrc: "assets/icons/menu_profile.svg",
          //   press: () {},
          // ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "packages/cm_common/assets/icons/menu_setting.svg",
            press: () {
              // onPress("Settings");
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        height: 16,
      ),
      title: Text(
        title,
      ),
    );
  }
}
