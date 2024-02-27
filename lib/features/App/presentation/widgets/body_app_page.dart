import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/core/extension/extension.dart';
import 'package:p1/features/App/presentation/cubit/app_cubit.dart';
import 'package:p1/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:p1/features/dashboard/presentation/widgets/custom_drawer.dart';
import 'package:p1/features/sessions/presentation/pages/sessions_page.dart';

class BodyAppPage extends StatelessWidget {
  const BodyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Row(
          children: [
            if (context.isDesktop)
              SizedBox(
                width: context.width / 6.2,
                child: const CustomDrawer(),
              ),
            Expanded(
              child: _pages[state.index],
            ),
          ],
        );
      },
    );
  }
}

List<Widget> _pages = [
  const DashboardPage(),
  const SessionsPage(),
];
