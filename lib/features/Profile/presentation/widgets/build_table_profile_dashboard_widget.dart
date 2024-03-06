import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'data_source.dart';

class BuildTableDashProfileWidget extends StatelessWidget {
  const BuildTableDashProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final DataTableSource data = DataSourceProfileDash();
    return PaginatedDataTable(
      source: data,
      showCheckboxColumn: false,
      sortAscending: true,
      sortColumnIndex: 0,
      rowsPerPage: _texts.length,
      showFirstLastButtons: true,
      columns: List.generate(
        _texts.length,
        (index) {
          return DataColumn(
            tooltip: _texts[index],
            label: Row(
              children: [
                Icon(
                  _icons[index],
                  color: _colors[index],
                ),
                const SizedBox(width: 5),
                Text(
                  _texts[index],
                  style: TextStyle(
                    color: _colors[index],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

final List<String> _texts = [
  'Id',
  'Name',
  'Relation',
  'Email',
  'Status',
  'Actions',
];

final List<IconData> _icons = [
  Icons.tag,
  Icons.person,
  Icons.group,
  Icons.email,
  Icons.info,
  Icons.settings,
];

final List<Color> _colors = [
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.red,
  Colors.purple,
  Colors.teal,
];
