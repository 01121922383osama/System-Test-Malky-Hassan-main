import 'package:flutter/material.dart';

class DataSourceProfileCourses extends DataTableSource {
  final List _mydata = List.generate(
    _texts.length,
    (index) {
      return {
        'Id': '451',
        'Student': 'Osama Nabil',
        'Tutor': 'Osama Nabil',
        'Course': 'Islamic',
        'Date': '3/10/2015',
        'Sessions': 'Saturday',
        'Price': '\$ 10',
        'Status': 'Active',
      };
    },
  );

  @override
  DataRow? getRow(int index) {
    return DataRow(
      selected: true,
      cells: List.generate(
        _texts.length,
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

final List<String> _texts = [
  'Id',
  'Student',
  'Tutor',
  'Course',
  'Date',
  'Sessions',
  'Price',
  'Status',
];

final List<IconData> _icons = [
  Icons.tag,
  Icons.timelapse_outlined,
  Icons.group_rounded,
  Icons.padding_outlined,
  Icons.info,
  Icons.settings,
  Icons.attach_money,
  Icons.check_circle_outline,
];

final List<Color> _colors = [
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.red,
  Colors.purple,
  Colors.teal,
  Colors.indigoAccent,
  Colors.indigo,
];
