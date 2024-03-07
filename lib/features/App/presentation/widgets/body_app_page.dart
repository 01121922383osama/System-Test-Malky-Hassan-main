import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/features/Profile/presentation/pages/add_courses_page.dart';

import '../../../../core/extension/extension.dart';
import '../../../Profile/presentation/pages/profile_page.dart';
import '../../../dashboard/presentation/pages/dashboard_page.dart';
import '../../../dashboard/presentation/widgets/custom_drawer.dart';
import '../../../parients/presentation/pages/parients_page.dart';
import '../../../sessions/presentation/pages/sessions_page.dart';
import '../cubit/app_cubit.dart';

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
  const ParientsPage(),
  // !
  const DefualtScafold(),
  const DefualtScafold(),
  const DefualtScafold(),
  const DefualtScafold(),
  const DefualtScafold(),
  const DefualtScafold(),
  const DefualtScafold(),
  const DefualtScafold(),
  const DefualtScafold(),
  const DefualtScafold(),
  const DefualtScafold(),
  // !
  // FOR PROFILE
  const ProfilePage(),
  // FOR ADD COURSES
  const AddCoursesPage(),
];

class DefualtScafold extends StatelessWidget {
  const DefualtScafold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(),
      body: const Center(
        child: Text('Not Created Yet'),
      ),
    );
  }
}
