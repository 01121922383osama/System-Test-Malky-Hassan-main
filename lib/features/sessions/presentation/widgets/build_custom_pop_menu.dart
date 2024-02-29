import 'package:flutter/material.dart';

class BuildCustomDropDownMenu extends StatefulWidget {
  final String? initialText;
  final List<String>? itemList;

  const BuildCustomDropDownMenu({
    super.key,
    this.initialText,
    this.itemList,
  });

  @override
  State<BuildCustomDropDownMenu> createState() =>
      _BuildCustomDropDownMenuState();
}

class _BuildCustomDropDownMenuState extends State<BuildCustomDropDownMenu> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialText;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedValue,
      hint: Text(widget.initialText ?? ''),
      isExpanded: true,
      underline: const SizedBox(),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue;
        });
      },
      items: widget.itemList?.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
