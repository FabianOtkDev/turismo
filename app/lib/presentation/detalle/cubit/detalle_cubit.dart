import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

///import 'package:meta/meta.dart';

import '../models/lugar.dart';

part 'detalle_state.dart';

class DetalleCubit extends Cubit<DetalleState> {
  DetalleCubit() : super(DetalleState());
}
