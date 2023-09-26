class Lugar {
  int id;
  String nombre;

  Lugar(this.id, this.nombre);

  factory Lugar.empty() => Lugar(0, '');
}
