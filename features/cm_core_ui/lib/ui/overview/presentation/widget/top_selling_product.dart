import 'package:cm_common/constant/constant.dart';
import 'package:cm_core_ui/Ui/overview/application/application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'top_selling_info_card.dart';

class TopSellingCard extends ConsumerWidget {
  const TopSellingCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(overviewTopSellingProvider);
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Top Selling Products",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          product.when(
              initial: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              topSelling: (topSelling) => SizedBox(
                    height: MediaQuery.of(context).size.height / 2 + 30,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: topSelling.length,
                        itemBuilder: (context, index) {
                          return TopSellingInfoCard(
                            info: topSelling[index],
                          );
                        }),
                  ),
              failure: () => const Center(
                    child: Text("No Records Founds"),
                  ))
        ],
      ),
    );
  }
}
