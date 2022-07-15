import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import '../../views/Login/login.dart';
import '../../views/Register/Rigister.dart';

class AppRoutes {
  static const String landingPageRoute = '/';
  static const String loginPageRoute = '/login';
  static const String registerPageRoute = '/register';
}

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.loginPageRoute:
      return MaterialPageRoute(builder: (_) => const LoginPage());
    case AppRoutes.registerPageRoute:
      return MaterialPageRoute(builder: (_) => const RigisterPage());

    case AppRoutes.landingPageRoute:
    default:
      return MaterialPageRoute(builder: (_) => const LoginPage());
  }
}
