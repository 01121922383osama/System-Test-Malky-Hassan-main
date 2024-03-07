import 'package:flutter/material.dart';
import 'package:p1/features/Profile/presentation/widgets/Lessons/data_source_lessons.dart';

class BuildTableLessonsProfileWidget extends StatelessWidget {
  const BuildTableLessonsProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final DataTableSource data = DataSourceProfileLessons();
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
  'Name',
  'Time',
  'Date',
  'Agent',
  'Lesson',
  'Status',
];

final List<IconData> _icons = [
  Icons.person,
  Icons.timelapse_outlined,
  Icons.group_rounded,
  Icons.padding_outlined,
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
