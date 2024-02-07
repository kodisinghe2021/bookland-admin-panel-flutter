import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class DropDownMenuC extends StatefulWidget {
  DropDownMenuC({required this.items, Key? key}) : super(key: key);
  final List<dynamic> items;
  @override
  State<DropDownMenuC> createState() => _DropDownMenuCState();
}

class _DropDownMenuCState extends State<DropDownMenuC> {
  double? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<double>(
        isExpanded: true,
        hint: Text(
          'Select Item',
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).hintColor,
          ),
        ),
        items: widget.items
            .map((e) => DropdownMenuItem<double>(
                value: e.unitId, child: Text(e.unitName)))
            .toList(),
        value: selectedValue,
        onChanged: (double? value) {
          setState(() {
            Logger().i("Selected value : $value");
            selectedValue = value;
          });
        },
      ),
    );
  }
}
