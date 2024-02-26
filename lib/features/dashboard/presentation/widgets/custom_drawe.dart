import 'package:flutter/material.dart';
import 'package:p1/core/constant/app_colors.dart';
import 'package:p1/core/styles/styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          _buildLogoDash(),
          Expanded(
            child: _buildListView(onTap: () {}),
          ),
        ],
      ),
    );
  }
}

Widget _buildLogoDash() {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            shape: BoxShape.rectangle,
            color: AppColors.blue,
          ),
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
  );
}

Widget _buildListView({required Function() onTap}) {
  return ListView.builder(
    itemCount: _title.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        hoverColor: AppColors.blue,
        onTap: onTap,
        leading: Icon(
          _icons[index],
          color: _colors[index],
        ),
        title: Text(_title[index]),
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
