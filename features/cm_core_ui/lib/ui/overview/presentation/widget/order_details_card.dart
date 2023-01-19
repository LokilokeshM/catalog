import 'package:cm_common/constant/constant.dart';
import 'package:flutter/material.dart';

import 'chart.dart';
import 'order_info_card.dart';

class OrderDetailsCard extends StatelessWidget {
  const OrderDetailsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Oder Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          OrderInfoCard(
            svgSrc: "packages/cm_common/assets/icons/Documents.svg",
            title: "Pending Orders",
            orderCount: 1,
            numOfFiles: 1328,
          ),
          OrderInfoCard(
            svgSrc: "packages/cm_common/assets/icons/media.svg",
            title: "Unpaid Orders",
            orderCount: 15,
            numOfFiles: 1328,
          ),
          OrderInfoCard(
            svgSrc: "packages/cm_common/assets/icons/folder.svg",
            title: "Pending Return/Refund",
            orderCount: 50,
            numOfFiles: 1328,
          ),
          OrderInfoCard(
            svgSrc: "packages/cm_common/assets/icons/unknown.svg",
            title: "To be Reviewed",
            orderCount: 50,
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
