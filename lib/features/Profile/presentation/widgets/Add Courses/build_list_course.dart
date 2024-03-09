// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/core/constant/app_colors.dart';
import 'package:p1/core/widgets/custom_button.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_data_table_addcours.dart';
import 'package:p1/features/dashboard/presentation/cubit/themes/themes_app_cubit.dart';

class BuildListCoursesWidget extends StatelessWidget {
  const BuildListCoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: const SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              BuildTableAddCourseWidget(),
              BuildSubmetButtomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildSubmetButtomWidget extends StatelessWidget {
  const BuildSubmetButtomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemesAppCubit, bool>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.all(10),
          child: Row(
            children: [
              CustomButtonWidget(
                text: 'Submet',
                textStyle: TextStyle(
                  color: state ? AppColors.white : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: AppColors.darkblue,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                ),
              ),
              const SizedBox(width: 10),
              CustomButtonWidget(
                text: 'Cancel',
                textStyle: TextStyle(
                  color: state ? AppColors.white : AppColors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
