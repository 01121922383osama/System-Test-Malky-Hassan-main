import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sessions_state.dart';

class SessionsCubit extends Cubit<SessionsState> {
  SessionsCubit() : super(const SessionsInitial(index: 25));
  void changeIndex(int index) => emit(
        SessionsInitial(
          index: index,
        ),
      );
}
