part of 'listado_cubit.dart';

class ListadoState extends Equatable {
  final bool esFavorito;
  final int contador;

  ListadoState({this.esFavorito = false, this.contador = 0});

  @override
  List<Object?> get props => [this.esFavorito, this.contador];

  ListadoState copyWith({bool? esFavorito, int? contador}) {
    return ListadoState(
      esFavorito: esFavorito ?? this.esFavorito,
      contador: contador ?? this.contador,
    );
  }
}
