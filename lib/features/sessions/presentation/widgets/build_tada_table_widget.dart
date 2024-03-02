import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/features/sessions/presentation/widgets/data_class.dart';

import '../../../dashboard/presentation/cubit/themes/themes_app_cubit.dart';
import '../cubit/sessions_cubit.dart';

class BuildDataTableWidget extends StatelessWidget {
  const BuildDataTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final DataTableSource data = DataClass();
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
              columns: const [
                DataColumn(
                  label: Row(
                    children: [
                      Icon(Icons.date_range, color: Colors.blue),
                      SizedBox(width: 5),
                      Text('Date', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
                DataColumn(
                  label: Row(
                    children: [
                      Icon(Icons.timelapse_rounded, color: Colors.green),
                      SizedBox(width: 5),
                      Text('Time', style: TextStyle(color: Colors.green)),
                    ],
                  ),
                ),
                DataColumn(
                  label: Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.red),
                      SizedBox(width: 5),
                      Text('Location', style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
                DataColumn(
                  label: Row(
                    children: [
                      Icon(Icons.adjust, color: Colors.deepOrange),
                      SizedBox(width: 5),
                      Text('Type', style: TextStyle(color: Colors.deepOrange)),
                    ],
                  ),
                ),
                DataColumn(
                  label: Row(
                    children: [
                      Icon(Icons.stars_outlined, color: Colors.indigo),
                      SizedBox(width: 5),
                      Text('Status', style: TextStyle(color: Colors.indigo)),
                    ],
                  ),
                ),
                DataColumn(
                  label: Row(
                    children: [
                      Icon(Icons.settings_applications, color: Colors.purple),
                      SizedBox(width: 5),
                      Text('Action', style: TextStyle(color: Colors.purple)),
                    ],
                  ),
                ),
              ],
            );
          });
        },
      ),
    );
  }
}
