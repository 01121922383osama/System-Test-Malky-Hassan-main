import 'package:flutter/material.dart';
import 'package:p1/features/Profile/presentation/widgets/History/data_source_history.dart';

class BuildTableHistoryProfileWidget extends StatelessWidget {
  const BuildTableHistoryProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final DataTableSource data = DataSourceProfileHistory();
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
  'Comment',
  'Added At',
  'Added By',
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
