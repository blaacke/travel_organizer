import 'package:flutter/material.dart';
import 'package:travel_organizer/src/common/localization/locale_delegate.dart';
import 'package:travel_organizer/src/view/screens/first_acess/first_access.dart';
import 'package:travel_organizer/src/view/utils/main_navigator_utils.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel_organizer/src/view/utils/theme_utils.dart';

class TravelOrganizer extends StatelessWidget {
  const TravelOrganizer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Organizador de Viagens',
      debugShowCheckedModeBanner: false,
      navigatorKey: MainNavigatorUtils.navigatorKey,
      theme: ThemeUtils.light,
      supportedLocales: LocalDelegate().supported,
      localizationsDelegates: [
        LocalDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: const FirstAccess(),
    );
  }
}
