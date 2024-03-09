import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/data_source_addcourses.dart';

class BuildTableAddCourseWidget extends StatelessWidget {
  const BuildTableAddCourseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final DataTableSource data = DataSourceAddCourses();
    return PaginatedDataTable(
      source: data,
      showCheckboxColumn: false,
      sortAscending: true,
      sortColumnIndex: 0,
      rowsPerPage: _texts.length,
      showFirstLastButtons: true,
      columnSpacing: 40.w,
      columns: List.generate(
        _texts.length,
        (index) {
          return DataColumn(
            tooltip: _texts[index],
            label: Expanded(
              child: Row(
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
            ),
          );
        },
      ),
    );
  }
}

List<IconData> _icons = [
  Icons.calendar_today,
  Icons.access_time,
  Icons.access_time,
  Icons.delete,
];

List<String> _texts = ['Week Day', 'From', 'To', 'Action'];

List<Color> _colors = [
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.red,
];
