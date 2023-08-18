import 'package:go_router/go_router.dart';
import '../presentation/myhome/view/view.dart';
import '../presentation/listado/view/view.dart';
import '../presentation/detalle/view/view.dart';

class AppRouter {
  final GoRouter _router;

  AppRouter()
      : _router = GoRouter(
          initialLocation: "/myhome",
          routes: [
            GoRoute(
              name: MyHome.name,
              path: "/myhome",
              builder: (context, state) => MyHome(),
            ),
            GoRoute(
              name: Listado.name,
              path: "/listado",
              builder: (context, state) => Listado(),
            ),
            GoRoute(
              name: Detalle.name,
              path: "/detalle",
              builder: (context, state) => Detalle(),
            ),
          ],
        );

  GoRouter get router {
    return _router;
  }
}
