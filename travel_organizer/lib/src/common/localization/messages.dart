import 'package:flutter/material.dart';

class Messages {
  Messages();
  static Locale? locale;

  static init(Locale locale) {
    Messages.locale = locale;
  }

  static String of(String key) {
    if (locale == null) {
      Messages.init(const Locale('pt'));
    }
    return _localizedValues[locale!.languageCode]?[key] ?? '';
  }

  static String ofFormatted(String key, List<String> args) {
    String template = of(key);
    for (String arg in args) {
      template = template.replaceFirst('{?}', arg);
    }
    return template;
  }

  static const Map<String, Map<String, String>> _localizedValues = {
    'pt': {},
  };
}
