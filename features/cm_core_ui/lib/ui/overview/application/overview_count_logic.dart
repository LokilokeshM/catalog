import 'package:cm_common/constant/constant.dart';
import 'package:cm_core_ui/model/count_helper.dart';
import 'package:cm_core_ui/ui/overview/application/overview_count_state.dart';
import 'package:cm_core_ui/ui/overview/domain/count_repo.dart';
import 'package:flutter/material.dart';

import '../../../model/top_list_tap_helper.dart';
import '../application/overview_count_usecase.dart';

class OverViewCountLogic extends OverViewCountUseCase {
  OverViewCountLogic(this.repo) : super(OverViewCountState.initial()) {
    getCounts();
  }
  CountRepo repo;
  @override
  Future<void> getCounts() async {
    List<TopListTabCardHelper> topListTabs = [
      TopListTabCardHelper(
        title: "AArdae",
        svgSrc: "packages/cm_common/assets/icons/Documents.svg",
        color: Color.fromARGB(255, 176, 171, 164),
        level: 3,
        rank: 97,
      ),
      TopListTabCardHelper(
        title: "Users",
        svgSrc: "packages/cm_common/assets/icons/google_drive.svg",
        color: Color(0xFFFFA113),
      ),
      TopListTabCardHelper(
        title: "Total Orders",
        svgSrc: "packages/cm_common/assets/icons/one_drive.svg",
        color: Color(0xFFA4CDFF),
      ),
      TopListTabCardHelper(
        title: "Total Products",
        svgSrc: "packages/cm_common/assets/icons/drop_box.svg",
        color: Color(0xFF007EE5),
      ),
    ];
    final orderCountApi = await repo.getOrderCount();
    orderCountApi.when(
        success: (count) {
          topListTabs[2].totalCount = count.count ?? 0;
        },
        failure: (failure) {});
    final customerCountApi = await repo.getCustomerCount();
    customerCountApi.when(
        success: (count) {
          topListTabs[1].totalCount = count.count ?? 0;
        },
        failure: (failure) {});
    final productCountApi = await repo.getProductCount();
    productCountApi.when(
        success: (count) {
          topListTabs[3].totalCount = count.count ?? 0;
        },
        failure: (failure) {});
    state = OverViewCountState.success(tab: topListTabs);
  }
}
