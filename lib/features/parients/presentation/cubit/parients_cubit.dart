import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'parients_state.dart';

class ParientsCubit extends Cubit<ParientsState> {
  ParientsCubit() : super(ParientsInitial());
}
