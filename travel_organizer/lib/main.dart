import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_organizer/src/core/utils/database/db_provider.dart';
import 'package:travel_organizer/src/view/travel_organizer.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await DbProvider().init();
    runApp(const ProviderScope(
      child: TravelOrganizer(),
    ));
  }, (error, stack) {});
}
