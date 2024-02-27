import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sessions_state.dart';

class SessionsCubit extends Cubit<SessionsState> {
  SessionsCubit() : super(SessionsInitial());
}
