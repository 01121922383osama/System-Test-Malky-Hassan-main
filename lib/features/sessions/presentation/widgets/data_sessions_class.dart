import 'package:flutter/material.dart';

class DataClassSessions extends DataTableSource {
  final List _mydata = List.generate(200, (index) {
    return {
      'Name': 'Osama Nabil',
      'Time': '10:00 AM - 11:00 AM',
      'Date': '${DateTime.now()}',
      'Agent': 'Nabil',
      'Lesson': 'Lesson ',
      'Status': 'Attend / 15',
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
                _text[index] == 'Lesson'
                    ? const CircleAvatar(
                        radius: 10,
                        backgroundImage: AssetImage('assets/zoom_icon.png'),
                      )
                    : const SizedBox(),
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

List<Color> _colors = [
  Colors.blueGrey,
  Colors.green.withOpacity(0.8),
  Colors.redAccent,
  Colors.orange,
  Colors.indigoAccent,
  Colors.deepPurple,
];

List<String> _text = [
  'Name',
  'Time',
  'Date',
  'Agent',
  'Lesson',
  'Status',
];

List<IconData> _icons = [
  Icons.person_pin_rounded,
  Icons.timelapse_rounded,
  Icons.date_range,
  Icons.adjust,
  Icons.class_outlined,
  Icons.settings_applications,
];
