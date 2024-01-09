import 'package:flutter/material.dart';
import 'package:travel_organizer/src/view/abstract/abstract_route.dart';
import 'package:travel_organizer/src/view/screens/first_acess/first_access.dart';

class FirstAccessRoute extends AbstractRoute {
  const FirstAccessRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FirstAccess();
  }
}
