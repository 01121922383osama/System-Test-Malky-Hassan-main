import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:marquee_text/marquee_text.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import '../../../../core/styles/styles.dart';
import '../cubit/themes/themes_app_cubit.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

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
          flexibleSpace: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTextWidget(
                  context,
                  color: state ? AppColors.white : AppColors.black,
                ),
                Row(
                  children: [
                    _buildIconMode(context: context, state: state),
                    _buildProfile(context),
                    // if (!context.isMobile) const SizedBox(),
                    const SizedBox(width: 5),
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

Widget _buildTextWidget(BuildContext context, {required Color color}) {
  return Container(
    margin: EdgeInsets.only(left: _countMarginAppBar(context)),
    width: _countWidthTitle(context),
    child: MarqueeText(
      text: const TextSpan(
        text:
            'Build By Osama                                                     Build By Osama                                                     Build By Osama                                                     Build By Osama                                                     Build By Osama                                                     Build By Osama',
      ),
      style: TextStyle(
        fontSize: 22,
        color: color,
      ),
      speed: 30,
    ),
  );
}

double _countWidthTitle(BuildContext context) {
  if (!context.isMobile) {
    return 140.w;
  }
  if (context.isTablet) {
    return 200.w;
  }
  if (context.isDesktop) {
    return 150;
  }
  return 100;
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

double _countMarginAppBar(BuildContext context) {
  if (!context.isMobile) {
    return 50;
  }
  if (!context.isTablet) {
    return 50;
  }
  if (context.isDesktop) {
    return 15;
  }
  return 50;
}
