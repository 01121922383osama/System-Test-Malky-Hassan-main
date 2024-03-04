import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../sessions/presentation/cubit/sessions_cubit.dart';

class BuildPopMenuButtonWidget extends StatefulWidget {
  final String? initialText;
  final List<String>? itemList;

  const BuildPopMenuButtonWidget({
    super.key,
    this.initialText,
    this.itemList,
  });

  @override
  State<BuildPopMenuButtonWidget> createState() =>
      _BuildPopMenuButtonWidgetState();
}

class _BuildPopMenuButtonWidgetState extends State<BuildPopMenuButtonWidget> {
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
                value: value, child: Text(value), onTap: () {});
          }).toList(),
        );
      },
    );
  }
}
