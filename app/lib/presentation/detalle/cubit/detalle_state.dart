part of 'detalle_cubit.dart';

class DetalleState extends Equatable {
  final bool esFavorito;

  DetalleState({this.esFavorito = false});

  @override
  List<Object?> get props => [this.esFavorito];

  DetalleState copyWith({
    bool? esFavorito,
  }) {
    return DetalleState(
      esFavorito: esFavorito ?? this.esFavorito,
    );
  }
}
