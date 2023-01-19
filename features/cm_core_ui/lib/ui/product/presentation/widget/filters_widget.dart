import 'package:cm_common/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:cm_common/widget/forms/filter_drop_down.dart';

class FilterWidget extends StatefulWidget {
  FilterWidget({Key? key}) : super(key: key);

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  String selectedValue = "USA";

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(value: "USA", child: Text("USA")),
      DropdownMenuItem(value: "Canada", child: Text("Canada")),
      DropdownMenuItem(value: "Brazil", child: Text("Brazil")),
      DropdownMenuItem(value: "England", child: Text("England")),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          children: const [
            Expanded(
                child: FilterDropDown(
              title: "Product Name",
            )),
            Expanded(
                child: FilterDropDown(
              title: "Brand Category",
            )),
            Expanded(
                child: FilterDropDown(
              title: "Types",
            )),
          ],
        ));
  }
}
