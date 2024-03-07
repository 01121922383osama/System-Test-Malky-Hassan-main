import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataSourceProfileHistory extends DataTableSource {
  final List _mydata = List.generate(
    _texts.length,
    (index) {
      return {
        'Id': '451',
        'Comment': 'done the course && will back soon',
        'Added_At': DateFormat().add_yMMMMd().format(DateTime.now()),
        'Added_By': 'Islamic',
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
  'Comment',
  'Added_At',
  'Added_By',
];

final List<IconData> _icons = [
  Icons.info,
  Icons.comment,
  Icons.access_time,
  Icons.person,
];

final List<Color> _colors = [
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.red,
];
