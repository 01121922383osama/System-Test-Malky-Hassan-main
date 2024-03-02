import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import '../../../../core/styles/styles.dart';
import '../../../App/presentation/cubit/app_cubit.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(),
      child: Column(
        children: [
          _buildLogoDash(context),
          Expanded(
            child: _buildListView(),
          ),
        ],
      ),
    );
  }
}

Widget _buildLogoDash(BuildContext context) {
  return FittedBox(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              color: AppColors.blue.withOpacity(0.5),
            ),
            child: FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.menu_book_outlined),
                  Text(
                    'Dashboard',
                    style: textStyle,
                  ),
                ],
              ),
            ),
          ),
          if (!context.isDesktop)
            Builder(builder: (context) {
              return IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Scaffold.of(context).closeDrawer();
                },
              );
            }),
        ],
      ),
    ),
  );
}

Widget _buildListView() {
  return BlocBuilder<AppCubit, AppState>(
    builder: (context, state) {
      return ListView.builder(
        itemCount: _title.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              selected: true,
              selectedTileColor:
                  state.index == index ? AppColors.blue : Colors.transparent,
              splashColor: AppColors.darkblue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hoverColor: AppColors.blue,
              onTap: () {
                BlocProvider.of<AppCubit>(context).toggled(index: index);
                Scaffold.of(context).closeDrawer();
              },
              leading: Icon(
                _icons[index],
                color: _colors[index],
              ),
              title: Text(_title[index]),
            ),
          );
        },
      );
    },
  );
}

List<String> _title = [
  'Dashboard',
  'Sessions',
  'Parents',
  'Students List',
  'Add Student',
  'Tutors List',
  'Add Tutor',
  'Employees',
  'Activity',
  'Employees Payrolls',
  'Payment',
  'Tutor Payrolls',
  'Definitions',
  'Announcements',
];
List<IconData> _icons = [
  Icons.dashboard,
  Icons.schedule,
  Icons.people,
  Icons.school,
  Icons.person_add,
  Icons.people_outline,
  Icons.person_add_alt_1,
  Icons.group,
  Icons.directions_run,
  Icons.attach_money,
  Icons.payment,
  Icons.money,
  Icons.book,
  Icons.announcement,
];

List<Color> _colors = [
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.deepPurple,
  Colors.teal,
  Colors.amber,
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.indigo,
  Colors.cyan,
  Colors.brown,
  Colors.lightBlue,
  Colors.deepOrange,
];
