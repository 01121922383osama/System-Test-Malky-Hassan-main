import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/features/sessions/presentation/cubit/sessions_cubit.dart';

class BuildCustomDropDownMenu extends StatefulWidget {
  final String? initialText;
  final List<String>? itemList;

  const BuildCustomDropDownMenu({
    super.key,
    this.initialText,
    this.itemList,
  });

  @override
  State<BuildCustomDropDownMenu> createState() =>
      _BuildCustomDropDownMenuState();
}

class _BuildCustomDropDownMenuState extends State<BuildCustomDropDownMenu> {
  String? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialText;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionsCubit, SessionsState>(
      builder: (context, state) {
        return DropdownButton<String>(
          value: selectedValue,
          hint: Text(widget.initialText ?? ''),
          isExpanded: true,
          underline: const SizedBox(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;
            });
          },
          items: widget.itemList?.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
              onTap: () {
                switch (value) {
                  case '25':
                    context.read<SessionsCubit>().changeIndex(25);
                    break;
                  case '50':
                    context.read<SessionsCubit>().changeIndex(50);
                    break;
                  case '100':
                    context.read<SessionsCubit>().changeIndex(100);
                  default:
                }
              },
            );
          }).toList(),
        );
      },
    );
  }
}
