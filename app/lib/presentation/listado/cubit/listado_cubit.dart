import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

///import 'package:meta/meta.dart';

import '../models/lugares.dart';

part 'listado_state.dart';

class ListadoCubit extends Cubit<ListadoState> {
  ListadoCubit() : super(ListadoState());
}
