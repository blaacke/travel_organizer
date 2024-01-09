import 'package:flutter/material.dart';
import 'package:travel_organizer/src/view/abstract/abstract_route.dart';
import 'package:travel_organizer/src/view/routes/first_access_route.dart';
import 'package:travel_organizer/src/view/routes/home_route.dart';

class AppRoutes {
  static const String firstAcess = 'first_acess';
  static const String home = 'home';

  static final Map<String, AbstractRoute Function(BuildContext context)>
      routes = {
    firstAcess: (context) => const FirstAccessRoute(),
    home: (context) => const HomeRoute(),
  };
}
