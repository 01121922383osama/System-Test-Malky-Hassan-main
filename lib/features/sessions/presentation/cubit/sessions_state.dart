part of 'sessions_cubit.dart';

abstract class SessionsState extends Equatable {
  final int index;
  const SessionsState({required this.index});

  @override
  List<Object> get props => [index];
}

class SessionsInitial extends SessionsState {
  const SessionsInitial({required super.index});
  @override
  List<Object> get props => [index];
}
