import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'parients_state.dart';

class ParientsCubit extends Cubit<ParientsState> {
  ParientsCubit() : super(ParientsInitial());
}
