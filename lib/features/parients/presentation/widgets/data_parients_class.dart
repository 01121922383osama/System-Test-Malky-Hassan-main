import 'package:flutter/material.dart';

class DataClassParients extends DataTableSource {
  final List _mydata = List.generate(200, (index) {
    return {
      'Id': '1891',
      'Name': 'Osama Nabil',
      'Email': 'osama@gmail.com',
      'Phone': '01147566910',
      'Students': 'SELF \nLearning',
      'Status': 'Active',
      'Actions': 'Actions',
    };
  });

  @override
  DataRow? getRow(int index) {
    return DataRow(
      selected: true,
      cells: List.generate(
        _text.length,
        (index) {
          return DataCell(
            Row(
              children: [
                Icon(_icons[index], color: _colors[index]),
                const SizedBox(width: 5),
                Text(
                  _mydata[index][_text[index]],
                  style: TextStyle(
                    color: _colors[index],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      onSelectChanged: (value) {},
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _mydata.length;

  @override
  int get selectedRowCount => 0;
}

List<Color> _colors = [
  Colors.blueGrey,
  Colors.green.withOpacity(0.8),
  Colors.redAccent,
  Colors.orange,
  Colors.indigoAccent,
  Colors.deepPurple,
  Colors.teal,
];

List<String> _text = [
  'Id',
  'Name',
  'Email',
  'Phone',
  'Students',
  'Status',
  'Actions',
];

final List<IconData> _icons = [
  Icons.account_circle,
  Icons.person,
  Icons.email,
  Icons.phone,
  Icons.school,
  Icons.info,
  Icons.more_vert,
];
