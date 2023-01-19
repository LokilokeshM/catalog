import 'package:flutter/material.dart';

class CustomTabs extends StatefulWidget {
  const CustomTabs({Key? key, required this.tabs, required this.onTap})
      : super(key: key);
  final List<Tab> tabs;
  final Function(int index) onTap;
  @override
  _CustomTabsState createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: widget.tabs.length);
    _tabController!.addListener(() {
      widget.onTap(_tabController!.index);
    });
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 10,
          child: TabBar(
            labelColor: Colors.black,
            controller: _tabController,
            tabs: widget.tabs,
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 5,
            child: TabBarView(
              controller: _tabController,
              children: widget.tabs.map((Tab tab) {
                return const Center(child: Text(""));
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
