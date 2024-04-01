import 'package:com_lvoxx_urban_dictionary/core/service/service_locator.dart'
    as di;
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/entities/recent_search.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/entities/urban_word.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> appInit() async {
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );
  await Hive.initFlutter();
  await di.initServiceLocator();
}

Future<void> initHiveBox() async {
  Hive
    ..registerAdapter(UrbanWordAdapter())
    ..registerAdapter(RecentSearchAdapter());
}
