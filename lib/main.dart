/// Purpose: This code is made publicly available
///          for sharing and educational purposes.
/// Author:  Lvoxx (https://github.com/lvoxx)
///
/// Uses:    This code is intended for studying and learning purposes only.
///          It is not to be reused for commercial purposes or any activities
///          that may cause harm to the provider.

import 'dart:async';

import 'package:com_lvoxx_urban_dictionary/app/app_init.dart' as app_init;
import 'package:com_lvoxx_urban_dictionary/app/urban_app.dart';
import 'package:com_lvoxx_urban_dictionary/core/service/service_locator.dart'
    as di;
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runZonedGuarded(() async {
    await app_init.initHiveBox();
    await app_init.appInit();
    final themeData = await di.sl.getAsync<ThemeData>();
    runApp(
      UrbanApp(
        themeData: themeData,
      ),
    );
  }, (e, st) {
    Logger().f('Init App Failed', error: e, stackTrace: st);
  });
}
