import 'package:flutter/material.dart';

class DataSourceAddCourses extends DataTableSource {
  final List _mydata = List.generate(6, (index) {
    return {
      'Week Day': 'Osama Nabil',
      'From': TimeOfDay.now().toString(),
      'To': TimeOfDay.now().toString(),
      'Delete': 'Action',
    };
  });

  @override
  DataRow? getRow(int index) {
    return DataRow(
      selected: true,
      cells: List.generate(
        4,
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
            onTap: () {},
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
  Icons.calendar_today,
  Icons.access_time,
  Icons.access_time,
  Icons.delete,
];

List<String> _texts = [
  'Week Day',
  'From',
  'To',
  'Delete',
];

List<Color> _colors = [
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.red,
];
