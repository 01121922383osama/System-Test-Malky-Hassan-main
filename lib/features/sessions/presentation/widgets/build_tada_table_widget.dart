import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/features/sessions/presentation/widgets/data_sessions_class.dart';

import '../../../dashboard/presentation/cubit/themes/themes_app_cubit.dart';
import '../cubit/sessions_cubit.dart';

class BuildDataTableSessionsWidget extends StatelessWidget {
  const BuildDataTableSessionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final DataTableSource data = DataClassSessions();
    return SliverToBoxAdapter(
      child: BlocBuilder<ThemesAppCubit, bool>(
        builder: (context, state) {
          return BlocBuilder<SessionsCubit, SessionsState>(
              builder: (context, state) {
            return PaginatedDataTable(
              source: data,
              showCheckboxColumn: false,
              sortAscending: true,
              sortColumnIndex: 0,
              rowsPerPage: state.index,
              columns: List.generate(_texts.length, (index) {
                return DataColumn(
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
              }),
            );
          });
        },
      ),
    );
  }
}

List<String> _texts = [
  'Name',
  'Time',
  'Date',
  'Agent',
  'Lesson',
  'Status',
];
List<IconData> _icons = [
  Icons.person,
  Icons.timelapse_rounded,
  Icons.date_range,
  Icons.adjust,
  Icons.class_,
  Icons.settings_applications,
];

List<Color> _colors = [
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.deepOrange,
  Colors.indigo,
  Colors.purple
];
