import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travel_organizer/src/common/localization/messages.dart';

class LocalDelegate extends LocalizationsDelegate<Messages> {
  List<Locale> supported = const [
    Locale('pt', ''),
  ];

  @override
  bool isSupported(Locale locale) {
    List<String> supportedLoc = supported.map((e) => e.languageCode).toList();
    return supportedLoc.contains(locale.languageCode);
  }

  @override
  Future<Messages> load(Locale locale) {
    Messages.init(locale);
    return SynchronousFuture<Messages>(Messages());
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<Messages> old) {
    return false;
  }
}
