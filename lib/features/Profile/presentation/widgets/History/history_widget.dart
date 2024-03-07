import 'package:flutter/material.dart';
import 'package:p1/core/constant/app_colors.dart';
import 'package:p1/core/widgets/custom_text_field_widget.dart';
import 'package:p1/features/Profile/presentation/widgets/History/build_table_history.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          AddCommentWidgetHistory(),
          BuildTableHistoryProfileWidget(),
        ],
      ),
    );
  }
}

class AddCommentWidgetHistory extends StatelessWidget {
  const AddCommentWidgetHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.darkblue,
          width: 1,
        ),
      ),
      child: CustomTextFieldWidget(
        hintText: 'Write Somthing...',
        suffixIcon: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: const Text('Add coomment'),
        ),
      ),
    );
  }
}
