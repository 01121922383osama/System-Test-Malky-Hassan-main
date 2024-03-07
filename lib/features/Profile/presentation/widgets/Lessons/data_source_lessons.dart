import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataSourceProfileLessons extends DataTableSource {
  final List _mydata = List.generate(6, (index) {
    return {
      'Name': 'Osama Nabil',
      'Time': DateFormat.jms().format(DateTime.now()).toString(),
      'Date': '${DateTime.now().month}',
      'Agent': 'Nabil',
      'Lesson': 'Islamic',
      'Status': 'Active',
    };
  });

  @override
  DataRow? getRow(int index) {
    return DataRow(
      selected: true,
      cells: List.generate(
        6,
        (index) {
          return DataCell(
            Row(
              children: [
                Icon(
                  _icons[index],
                  color: _colors[index],
                ),
                const SizedBox(width: 5),
                Text(
                  _mydata[index][_texts[index]],
                  style: TextStyle(
                    color: _colors[index],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _mydata.length;

  @override
  int get selectedRowCount => 0;
}

List<IconData> _icons = [
  Icons.person,
  Icons.timelapse_outlined,
  Icons.group_rounded,
  Icons.padding_outlined,
  Icons.info,
  Icons.settings,
];

List<String> _texts = [
  'Name',
  'Time',
  'Date',
  'Agent',
  'Lesson',
  'Status',
];

List<Color> _colors = [
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.red,
  Colors.purple,
  Colors.teal,
];
