import 'package:flutter/material.dart';
import 'package:p1/core/constant/app_colors.dart';

class BuildStartEndDateWidget extends StatefulWidget {
  final String text;
  const BuildStartEndDateWidget({super.key, required this.text});

  @override
  State<BuildStartEndDateWidget> createState() =>
      _BuildStartEndDateWidgetState();
}

class _BuildStartEndDateWidgetState extends State<BuildStartEndDateWidget> {
  String? textDateTime;
  TimeOfDay? initialTime;
  @override
  void initState() {
    textDateTime = widget.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: AppColors.darkblue.withOpacity(0.8),
      borderRadius: BorderRadius.circular(10),
      onTap: () => _showTimeDate(context),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Text(
          initialTime != null
              ? _text(hineText: widget.text, textDate: textDateTime!)
              : 'Choose ${widget.text == 'Start Date' ? 'Start Time' : 'End Time'}',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  void _showTimeDate(BuildContext context) {
    showTimePicker(
      context: context,
      initialTime: initialTime ?? TimeOfDay.now(),
    ).then((value) {
      if (value != null) {
        setState(() {
          textDateTime = value.format(context);
          initialTime = value;
        });
      }
    });
  }
}

String _text({required String hineText, String? textDate}) {
  if (hineText == 'Start Date') {
    return 'Start Date: ${textDate ?? ''}';
  } else if (hineText == 'End Date') {
    return 'End Date: ${textDate ?? ''}';
  }
  return hineText;
}
