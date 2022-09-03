import 'package:e_commerce/models/products.dart';
import 'package:e_commerce/views/Login/Authpage.dart';
import 'package:e_commerce/views/home/productDetails.dart';

import 'package:flutter/material.dart';

import '../../views/home/bottomnavbar.dart';
import '../../views/home/landing_page.dart';

class AppRoutes {
  static const String landingPageRoute = '/';
  static const String loginPageRoute = '/login';
  static const String registerPageRoute = '/register';
  static const String productDetails = '/productDetails';
  static const String bottomNavBarRoute = '/bottomNav';
}

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.loginPageRoute:
      return MaterialPageRoute(builder: (_) => const AuthPage());
    case AppRoutes.landingPageRoute:
      return MaterialPageRoute(builder: (_) => const LandingPage());
    case AppRoutes.bottomNavBarRoute:
      return MaterialPageRoute(builder: (_) => const BottomNavbar());

    case AppRoutes.productDetails:
      final product = settings.arguments as Products;
      return MaterialPageRoute(
          builder: (_) => ProductDetails(product: product), settings: settings);

    default:
      return MaterialPageRoute(builder: (_) => const AuthPage());
  }
}
