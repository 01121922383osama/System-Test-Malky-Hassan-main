import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BuildDateTimeNowWidget extends StatefulWidget {
  const BuildDateTimeNowWidget({super.key});

  @override
  State<BuildDateTimeNowWidget> createState() => _BuildDateTimeNowWidgetState();
}

class _BuildDateTimeNowWidgetState extends State<BuildDateTimeNowWidget> {
  DateTime? dateTime;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () => _chooseDate(context),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        child: Text(dateTime != null
            ? DateFormat.yMd().format(dateTime!)
            : 'Choose Date'),
      ),
    );
  }

  void _chooseDate(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(DateTime.now().year + 10),
    ).then((value) {
      if (value != null) {
        setState(() {
          dateTime = value;
        });
      }
    });
  }
}
