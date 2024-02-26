import 'package:flutter_bloc/flutter_bloc.dart';

class ThemesAppCubit extends Cubit<bool> {
  ThemesAppCubit() : super(false);
  void changeTheme() {
    emit(!state);
  }
}
