import 'package:cm_common/constant/constant.dart';
import 'package:cm_common/responsive.dart';
import 'package:cm_common/widget/forms/search_field.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            // onPressed: context.read<MenuController>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          const Text(
            "Aarkind Shop",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const Expanded(child: SearchField()),
        const SizedBox(
          width: defaultPadding,
        ),
        InkWell(
          onTap: () {
            Scaffold.of(context).openEndDrawer();
          },
          child: CircleAvatar(
            child: Image.asset(
              "packages/cm_common/assets/images/profile_pic.png",
              height: 40,
            ),
          ),
        ),
        const SizedBox(
          width: defaultPadding,
        ),
        GFIconBadge(
          counterChild: const GFBadge(
            child: Text("12"),
          ),
          child: GFIconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        alignment: Alignment.topRight,
                        backgroundColor: secondaryColor,
                        content: Container(
                          width: MediaQuery.of(context).size.width / 4,
                          child: Stack(children: <Widget>[
                            Positioned(
                              top: 10.0,
                              child: InkResponse(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    "Notification",
                                  )),
                            ),
                            Positioned(
                              right: 20,
                              top: 5.0,
                              child: InkResponse(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const CircleAvatar(
                                  radius: 20,
                                  child: Icon(Icons.close),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 50,
                                child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    height: MediaQuery.of(context).size.height -
                                        100,
                                    child: const SingleChildScrollView(
                                        // child: NotificationDetailPage(),
                                        )))
                          ]),
                        ));
                  });
            },
            size: GFSize.SMALL,
            icon: const Icon(Icons.notifications),
            shape: GFIconButtonShape.pills,
          ),
        ),
      ],
    );
  }
}
