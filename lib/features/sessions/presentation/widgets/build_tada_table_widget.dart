import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

class DataClass extends DataTableSource {
  final List _mydata = List.generate(200, (index) {
    return {
      'Date': '12/12/2020',
      'Time': '10:00 AM - 11:00 AM',
      'Location': 'Lahore',
      'Type': 'Class',
      'Status': 'Pending',
      'Action': 'View',
    };
  });

  @override
  DataRow? getRow(int index) {
    return DataRow(
      selected: true,
      cells: [
        DataCell(
          Row(
            children: [
              const Icon(Icons.date_range, color: Colors.blueGrey),
              const SizedBox(width: 5),
              Text(_mydata[index]['Date'],
                  style: const TextStyle(color: Colors.blueGrey)),
            ],
          ),
        ),
        DataCell(
          Row(
            children: [
              Icon(Icons.timelapse_rounded,
                  color: Colors.green.withOpacity(0.8)),
              const SizedBox(width: 5),
              Text(_mydata[index]['Time'],
                  style: TextStyle(color: Colors.green.withOpacity(0.8))),
            ],
          ),
        ),
        DataCell(
          Row(
            children: [
              const Icon(Icons.location_on, color: Colors.redAccent),
              const SizedBox(width: 5),
              Text(_mydata[index]['Location'],
                  style: const TextStyle(color: Colors.redAccent)),
            ],
          ),
        ),
        DataCell(
          Row(
            children: [
              const Icon(Icons.adjust, color: Colors.orange),
              const SizedBox(width: 5),
              Text(_mydata[index]['Type'],
                  style: const TextStyle(color: Colors.orange)),
            ],
          ),
        ),
        DataCell(
          Row(
            children: [
              const Icon(Icons.stars_outlined, color: Colors.indigoAccent),
              const SizedBox(width: 5),
              Text(_mydata[index]['Status'],
                  style: const TextStyle(color: Colors.indigoAccent)),
            ],
          ),
        ),
        DataCell(
          Row(
            children: [
              const Icon(Icons.settings_applications, color: Colors.deepPurple),
              const SizedBox(width: 5),
              Text(_mydata[index]['Action'],
                  style: const TextStyle(color: Colors.deepPurple)),
            ],
          ),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _mydata.length;

  @override
  int get selectedRowCount => 0;
}
