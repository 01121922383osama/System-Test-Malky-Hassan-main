import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/features/App/presentation/cubit/app_cubit.dart';
import 'package:p1/features/Profile/presentation/widgets/Courses/build_table_courses.dart';

class CoursesWidget extends StatelessWidget {
  const CoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  BlocProvider.of<AppCubit>(context).toggled(index: 15);
                },
                label: const Text('Add'),
                icon: const Icon(Icons.add),
              ),
            ),
          ),
          const BuildTableCoursesProfileWidget(),
        ],
      ),
    );
  }
}
