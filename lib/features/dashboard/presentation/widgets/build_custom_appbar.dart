import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:marquee_text/marquee_text.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import '../../../../core/styles/styles.dart';
import '../cubit/themes/themes_app_cubit.dart';

class BuildCustomAppBarDash extends StatelessWidget {
  const BuildCustomAppBarDash({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemesAppCubit, bool>(
      builder: (context, state) {
        return SliverAppBar(
          floating: true,
          pinned: true,
          snap: true,
          backgroundColor: state ? AppColors.dark : Colors.white,
          scrolledUnderElevation: 20,
          automaticallyImplyLeading: false,
          leading: !context.isDesktop ? _buildDrawerButton() : null,
          elevation: 15,
          title: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: context.width / 2.5,
                  child: _buildTextWidget(
                    color: state ? AppColors.white : AppColors.black,
                  ),
                ),
                Row(
                  children: [
                    _buildIconMode(context: context, state: state),
                    _buildProfile(context),
                    if (!context.isMobile) const SizedBox.shrink(),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget _buildTextWidget({required Color color}) {
  return SizedBox(
    width: 50.w,
    child: MarqueeText(
      text: const TextSpan(
        text:
            'Build By Osama                                                     Build By Osama                                                     Build By Osama',
      ),
      style: TextStyle(
        fontSize: 22,
        color: color,
      ),
      speed: 30,
    ),
  );
}

Widget _buildDrawerButton() {
  return Builder(
    builder: (context) {
      return IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(Icons.menu),
      );
    },
  );
}

Widget _buildIconMode({required BuildContext context, required dynamic state}) {
  return Row(
    children: [
      IconButton(
        onPressed: () {
          BlocProvider.of<ThemesAppCubit>(context).changeTheme();
        },
        icon: Icon(
          state ? Icons.dark_mode : Icons.dark_mode_outlined,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.chat_bubble_outline),
      ),
    ],
  );
}

Widget _buildProfile(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(left: 5, right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: AppColors.darkblue),
    ),
    child: Row(
      children: [
        if (context.isMobile)
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Osama Nabil',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                DateFormat().add_jmz().format(DateTime.now()),
                style: textStyle.copyWith(
                  fontSize: 13,
                ),
              ),
            ],
          ),
        _buildCircleAvarar(),
      ],
    ),
  );
}

Widget _buildCircleAvarar() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(Icons.person),
  );
}
