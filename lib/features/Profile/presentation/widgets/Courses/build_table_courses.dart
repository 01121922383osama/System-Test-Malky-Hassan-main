import 'package:flutter/material.dart';
import 'package:p1/features/Profile/presentation/widgets/Courses/data_source_courses.dart';

class BuildTableCoursesProfileWidget extends StatelessWidget {
  const BuildTableCoursesProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final DataTableSource data = DataSourceProfileCourses();
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
