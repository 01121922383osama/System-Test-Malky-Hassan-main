import 'package:flutter/material.dart';

class BuildPopMenuCourseTitle extends StatefulWidget {
  final String? initialText;
  final List<String>? itemList;

  const BuildPopMenuCourseTitle({
    super.key,
    this.initialText,
    this.itemList,
  });

  @override
  State<BuildPopMenuCourseTitle> createState() =>
      _BuildPopMenuCourseTitleState();
}

class _BuildPopMenuCourseTitleState extends State<BuildPopMenuCourseTitle> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialText;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      alignment: Alignment.center,
      borderRadius: BorderRadius.circular(5),
      padding: const EdgeInsets.symmetric(horizontal: 5),
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
