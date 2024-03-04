import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/show_toast.dart';
import '../../../App/presentation/cubit/app_cubit.dart';
import 'package:pie_menu/pie_menu.dart';

class DataClassParients extends DataTableSource {
  final BuildContext context;
  final List _mydata = List.generate(200, (index) {
    return {
      'Id': '1891',
      'Name': 'Osama Nabil',
      'Email': 'osama@gmail.com',
      'Phone': '01147566910',
      'Students': 'SELF \nLearning',
      'Status': 'Active',
      'Actions': 'Actions',
    };
  });

  DataClassParients({required this.context});

  @override
  DataRow? getRow(int index) {
    return DataRow(
      selected: true,
      cells: [
        DataCell(
          Row(
            children: [
              const Icon(
                Icons.account_circle,
                color: Colors.blueGrey,
              ),
              const SizedBox(width: 5),
              Text(
                _mydata[index]['Id'],
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        DataCell(
          Row(
            children: [
              const Icon(
                Icons.person,
                color: Colors.blue,
              ),
              const SizedBox(width: 5),
              Text(
                _mydata[index]['Name'],
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          onTap: () {
            BlocProvider.of<AppCubit>(context).toggled(index: 14);
          },
        ),
        DataCell(
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.redAccent.withOpacity(0.7),
              ),
              const SizedBox(width: 5),
              Text(
                _mydata[index]['Email'],
                style: const TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        DataCell(
          Row(
            children: [
              const Icon(
                Icons.phone,
                color: Colors.green,
              ),
              const SizedBox(width: 5),
              Text(
                _mydata[index]['Phone'],
                style: const TextStyle(
                  color: Colors.green,
                ),
              ),
            ],
          ),
          onTap: () {
            Clipboard.setData(
              ClipboardData(text: _mydata[index]['Phone']),
            );
            toastInfo(context, msg: 'Coped Successfully');
          },
        ),
        DataCell(
          Row(
            children: [
              const Icon(
                Icons.school,
                color: Colors.orange,
              ),
              const SizedBox(width: 5),
              Text(
                _mydata[index]['Students'],
                style: const TextStyle(
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ),
        DataCell(
          Row(
            children: [
              const Icon(
                Icons.info,
                color: Colors.deepPurple,
              ),
              const SizedBox(width: 5),
              Text(
                _mydata[index]['Status'],
                style: const TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
        DataCell(
          PieMenu(
            theme: const PieTheme(
              delayDuration: Duration.zero,
              overlayColor: Colors.transparent,
            ),
            actions: [
              PieAction(
                tooltip: const Text('Delete'),
                buttonThemeHovered: const PieButtonTheme(
                  backgroundColor: Colors.red,
                  iconColor: Colors.black,
                ),
                onSelect: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          actionsAlignment: MainAxisAlignment.spaceBetween,
                          actionsOverflowAlignment: OverflowBarAlignment.center,
                          alignment: Alignment.center,
                          title: const Text('Delete'),
                          content: const Text('Are you sure?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('No'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Yes'),
                            ),
                          ],
                        );
                      });
                },
                child: const Icon(Icons.delete_sharp),
              ),
              PieAction(
                tooltip: const Text('Edit Student'),
                onSelect: () {},
                child: const Icon(Icons.edit_outlined),
              ),
            ],
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Row(
                children: [
                  const Icon(
                    Icons.more_vert,
                    color: Colors.teal,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    _mydata[index]['Actions'],
                    style: const TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
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
