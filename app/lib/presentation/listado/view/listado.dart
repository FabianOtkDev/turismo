import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart'; // para debug: mostrar hora
import '../../myhome/view/view.dart';
import '../../detalle/view/view.dart';

class Listado extends StatelessWidget {
  static const name = 'listado';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'APP de Turismo - Listado',
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Página de listado"),

                SizedBox(height: 8),

                GestureDetector(
                  onTap: () => context.pushNamed(Detalle.name),
                  child: Text(
                    "Ir a página de detalles",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                SizedBox(height: 8),

                GestureDetector(
                  onTap: () => context.pushNamed(MyHome.name),
                  child: Text(
                    "Volver al Home",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                SizedBox(height: 8),

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
