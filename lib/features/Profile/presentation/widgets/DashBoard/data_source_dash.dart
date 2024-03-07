import 'package:flutter/material.dart';

class DataSourceProfileDash extends DataTableSource {
  final List _mydata = List.generate(6, (index) {
    return {
      'Id': '1891',
      'Name': 'Osama Nabil',
      'Relation': 'Son',
      'Email': 'osama@gmail.com',
      'Status': 'Active',
      'Actions': 'Actions',
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
  Icons.tag,
  Icons.person,
  Icons.group,
  Icons.email,
  Icons.info,
  Icons.settings,
];

List<String> _texts = [
  'Id',
  'Name',
  'Relation',
  'Email',
  'Status',
  'Actions',
];

List<Color> _colors = [
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.red,
  Colors.purple,
  Colors.teal,
];
