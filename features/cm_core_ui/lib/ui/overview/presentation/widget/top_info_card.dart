import 'package:cm_common/constant/constant.dart';
import 'package:cm_core_ui/model/top_list_tap_helper.dart';
import 'package:cm_core_ui/ui/overview/application/application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'file_info_card.dart';
import 'package:cm_common/responsive.dart';

class TopInfoCards extends ConsumerWidget {
  const TopInfoCards({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size _size = MediaQuery.of(context).size;
    final count = ref.watch(overviewCountProvider);
    return count.when(
        initial: () => const Center(child: CircularProgressIndicator()),
        success: (tab) => Column(
              children: [
                Responsive(
                  mobile: TopInfoCardGridView(
                    data: tab,
                    crossAxisCount: _size.width < 650 ? 2 : 4,
                    childAspectRatio: _size.width < 650 ? 1.3 : 1,
                  ),
                  tablet: TopInfoCardGridView(
                    data: tab,
                  ),
                  desktop: TopInfoCardGridView(
                    data: tab,
                    childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
                  ),
                ),
              ],
            ),
        failure: () => Container());
  }
}

class TopInfoCardGridView extends StatelessWidget {
  const TopInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
    required this.data,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  final List<TopListTabCardHelper> data;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: data.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(info: data[index]),
    );
  }
}
