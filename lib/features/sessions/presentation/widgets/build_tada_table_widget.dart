import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/features/dashboard/presentation/cubit/themes/themes_app_cubit.dart';

class BuildDataTableWidget extends StatelessWidget {
  const BuildDataTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final DataTableSource data = DataClass();
    return SliverToBoxAdapter(
      child: BlocBuilder<ThemesAppCubit, bool>(
        builder: (context, state) {
          return PaginatedDataTable(
            columns: const [
              DataColumn(label: Text('Date')),
              DataColumn(label: Text('Time')),
              DataColumn(label: Text('Location')),
              DataColumn(label: Text('Type')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Action')),
            ],
            source: data,
          );
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
      cells: [
        DataCell(Text(_mydata[index]['Date'])),
        DataCell(Text(_mydata[index]['Time'])),
        DataCell(Text(_mydata[index]['Location'])),
        DataCell(Text(_mydata[index]['Type'])),
        DataCell(Text(_mydata[index]['Status'])),
        DataCell(Text(_mydata[index]['Action'])),
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
