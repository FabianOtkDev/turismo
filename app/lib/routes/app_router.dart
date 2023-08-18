import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:miflutterapp/presentation/player_list/view/player_list_page.dart';

import '../presentation/myhome/view/view.dart';

// import '../presentation/error/view/error_page.dart';//
// import '../presentation/signup/view/view.dart';
// import '../presentation/user_profile/view/view.dart';

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
          ],
        );

  GoRouter get router {
    return _router;
  }
}
