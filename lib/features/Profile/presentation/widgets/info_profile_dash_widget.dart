import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Osama Nabil',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) =>
                const Divider(color: Colors.black38, thickness: 1),
            itemCount: 11,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(_texts[index]),
                trailing: Text(_subText[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}

List<String> _texts = [
  'Gender',
  'Parent',
  'Time',
  'Country',
  'Phone',
  'Email',
  'Joined',
  'Birthday',
  'Students',
  'Hours',
  '\$ Total Payments'
];

List<String> _subText = [
  'Male',
  'Parent',
  (DateFormat().add_yMEd().format(DateTime.now())),
  'United States of America (the)',
  '01147566910',
  'osama@gmail.com',
  'Tue 05 Oct 2021',
  '3 / 10 / 2002',
  '0',
  '8',
  '\$150'
];
