import 'package:cm_common/constant/constant.dart';
import 'package:cm_common/responsive.dart';
import 'package:cm_common/widget/tab/custom_tabs.dart';
import 'package:cm_core_ui/ui/product/application/application.dart';
import 'package:cm_core_ui/ui/product/application/product_list_logic.dart';
import 'package:cm_core_ui/ui/product/presentation/widget/filters_widget.dart';
import 'package:cm_core_ui/ui/product/presentation/widget/product_listview_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import './widget/top_row.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          primary: false,
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const SizedBox(height: defaultPadding),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        const TopRow(),
                        const SizedBox(height: defaultPadding),
                        // _bottomNavBar(),
                        SizedBox(
                            height: 100,
                            child: CustomTabs(
                              tabs: productTabs,
                              onTap: (index) => ref
                                  .read(productListProvider.notifier)
                                  .tabSelected(index: index),
                            )),
                        const SizedBox(height: defaultPadding),
                        FilterWidget(),
                        const SizedBox(height: defaultPadding),
                        ProdcutListViewWidget(),
                        if (Responsive.isMobile(context))
                          const SizedBox(height: defaultPadding),
                        // if (Responsive.isMobile(context))
                        //   const StorageDetails(),
                      ],
                    ),
                  ),
                  // if (!Responsive.isMobile(context))
                  //   SizedBox(width: defaultPadding),
                  // On Mobile means if the screen is less than 850 we dont want to show it
                  // if (!Responsive.isMobile(context))
                  //   Expanded(
                  //     flex: 2,
                  //     child: StarageDetails(),
                  //   ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
