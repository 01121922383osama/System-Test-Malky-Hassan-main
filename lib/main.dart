import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/routes/router.dart';
import 'config/routes/router_name.dart';
import 'core/constant/app_colors.dart';
import 'features/dashboard/presentation/cubit/themes/themes_app_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemesAppCubit()),
      ],
      child: ScreenUtilInit(
        child: BlocBuilder<ThemesAppCubit, bool>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'System',
              theme: ThemeData(
                brightness: state ? Brightness.dark : Brightness.light,
                useMaterial3: true,
                scaffoldBackgroundColor: AppColors.white,
              ),
              initialRoute: AppRouter.appPage,
              onGenerateRoute: Routers.ongenerateRouter,
              onUnknownRoute: Routers.errorRoute,
            );
          },
        ),
      ),
    );
  }
}
