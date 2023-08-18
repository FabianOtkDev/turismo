import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart'; // para debug: mostrar hora

class MyHome extends StatelessWidget {
  static const name = 'myhome';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'APP de Turismo',
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Carousel(),
                Botonera(),

                // para debug: mostar hora de ultimo reload
                FechaHoraWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FechaHoraWidget extends StatelessWidget {
  const FechaHoraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String fechaHoraActual =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text(
        fechaHoraActual,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Carousel extends StatelessWidget {
  final List<String> carouselImages = [
    "assets/images/carousel1.jpg",
    "assets/images/carousel4.jpg",
    "assets/images/carousel5.jpg",
    // Agrega más imágenes del carrusel aquí
  ];

  Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16 /
              6, // Puedes ajustar la relación de aspecto según tus imágenes
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: carouselImages.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Image.asset(
                imagePath,
                fit: BoxFit.cover,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class Botonera extends StatelessWidget {
  const Botonera({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: SizedBox(
        width:
            double.infinity, // Para que el Row ocupe todo el ancho disponible
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Boton(
                  etiqueta: "Atractivos",
                  icono: Icons.place,
                ),
                SizedBox(width: 8),
                Boton(etiqueta: "Alojamiento", icono: Icons.hotel),
                SizedBox(width: 8),
                Boton(
                  etiqueta: "Gastronomía",
                  icono: Icons.restaurant,
                ),
              ],
            ),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Boton(
                  etiqueta: "Servicios",
                  icono: Icons.local_gas_station,
                ),
                SizedBox(width: 8),
                Boton(
                  etiqueta: "Mapa",
                  icono: Icons.map,
                ),
                SizedBox(width: 8),
                Boton(
                  etiqueta: "Favoritos",
                  icono: Icons.star,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Boton extends StatelessWidget {
  final String etiqueta;
  final IconData icono;

  Boton({required this.etiqueta, required this.icono});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          // Aquí puedes agregar la lógica para manejar el evento del botón.
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16), // Ajusta el padding según tu preferencia
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icono,
                size: 32), // Ajusta el tamaño del ícono según tu preferencia
            SizedBox(height: 8), // Espacio entre el ícono y el texto
            Text(
              etiqueta,
              textAlign: TextAlign.center, // Alinea el texto al centro
            ),
          ],
        ),
      ),
    );
  }
}
