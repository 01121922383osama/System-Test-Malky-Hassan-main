import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/features/parients/presentation/widgets/data_parients_class.dart';
import 'package:p1/features/sessions/presentation/cubit/sessions_cubit.dart';

import '../../../dashboard/presentation/cubit/themes/themes_app_cubit.dart';

class BuildDataTableParientsWidget extends StatelessWidget {
  const BuildDataTableParientsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final DataTableSource data = DataClassParients(context: context);
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
            },
          );
        },
      ),
    );
  }
}

final List<String> _texts = [
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

final List<Color> _colors = [
  Colors.deepPurple,
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.orange,
  Colors.purple,
  Colors.teal,
];
