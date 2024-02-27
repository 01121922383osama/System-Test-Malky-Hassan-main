import 'package:flutter/material.dart';

class BuildCustomPopMenuWidget extends StatelessWidget {
  final String text;
  const BuildCustomPopMenuWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
      itemBuilder: (context) {
        return text == 'All' || text == '25'
            ? [
                PopupMenuItem(
                  value: 1,
                  child: Text(text == 'All' ? 'Select All' : '25'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(text == 'All' ? 'All' : '100'),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text(text == 'All' ? 'Lesson' : '500'),
                ),
                if (text == 'All')
                  PopupMenuItem(
                    value: 4,
                    child: Text(text == 'All' ? 'Trial' : '1000'),
                  ),
              ]
            : [
                if (text == 'All Staf')
                  const PopupMenuItem(
                    value: 4,
                    child: Text('Select Supporter'),
                  ),
                if (text == 'All Staf')
                  const PopupMenuItem(
                    value: 4,
                    child: Text('All'),
                  ),
              ];
      },
    );
  }
}
