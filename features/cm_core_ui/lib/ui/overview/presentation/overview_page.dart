import 'package:cm_common/constant/constant.dart';
import 'package:cm_core_ui/ui/overview/presentation/widget/top_info_card.dart';
import 'package:flutter/material.dart';

import 'widget/order_details_card.dart';
import 'widget/seller_score_card.dart';
import 'widget/top_selling_product.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header(
              //   buildContext: context,
              // ),
              const SizedBox(
                height: defaultPadding,
              ),
              const TopInfoCards(),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Expanded(flex: 4, child: SellerScoreCard()),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(flex: 4, child: TopSellingCard()),
                ],
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(flex: 4, child: OrderDetailsCard()),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(flex: 4, child: Container()),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
