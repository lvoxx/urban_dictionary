import 'dart:convert';

import 'package:com_lvoxx_urban_dictionary/app/bloc/app_bloc/app_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/app/views/bloc/bottom_nav_bar_cubit_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/core/constant/string.dart' as app;
import 'package:com_lvoxx_urban_dictionary/core/constant/string.dart' as config;
import 'package:com_lvoxx_urban_dictionary/core/network/network_info.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/data/data_sources/local/recent_urban_word_local_datasource.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/data/repository/recent_urban_word_repository_impl.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/entities/recent_search.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/repository/recent_urban_word_repository.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/usecases/load_recent_search.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/domain/usecases/save_new_recent_search.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/recent_search/recent_search_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/bloc/search_urban/search_urban_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/cubit/hint_buttons/hint_buttons_cubit.dart';
import 'package:com_lvoxx_urban_dictionary/features/recent/presentation/search_urban_word/cubit/search_field/search_field_cubit.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/data/data_sources/local/urban_word_local_datasource.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/data/data_sources/remote/urban_word_remote_datasource.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/data/repositories/urban_word_repository_impl.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/entities/urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/repositories/urban_word_repository.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/usecases/get_local_urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/usecases/random_urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/usecases/save_local_urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/domain/usecases/search_urban_word.dart';
import 'package:com_lvoxx_urban_dictionary/features/urban/presentation/random_urban_word/bloc/random_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:json_theme/json_theme.dart';
import 'package:logger/logger.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  sl
    // Hive
    ..registerFactoryAsync<Box<UrbanWord>>(
      () => Hive.openBox<UrbanWord>(config.urbanWordBox),
    )
    ..registerFactoryAsync<Box<RecentSearch>>(
      () => Hive.openBox<RecentSearch>(config.recentSearchBox),
    )

    // Bloc
    ..registerFactory(() => AppBloc(sl(), sl(), sl()))
    ..registerFactory(() => RandomBloc(sl(), sl()))
    ..registerFactory(() => SearchUrbanBloc(searchUrbanWord: sl()))
    ..registerFactory(
      () => RecentSearchBloc(sl(), sl()),
    )
    ..registerFactory(BottomNavBarCubit.new)
    ..registerFactory(SearchFieldCubit.new)
    ..registerFactory(HintButtonCubit.new)

    // Use Case
    ..registerLazySingleton(() => GetLocalUrbanWord(repository: sl()))
    ..registerLazySingleton(() => RandomUrbanWord(repository: sl()))
    ..registerLazySingleton(() => SaveLocalUrbanWord(repository: sl()))
    ..registerLazySingleton(() => SearchUrbanWord(repository: sl()))
    ..registerLazySingleton(
      () => LoadRecentSearch(recentUrbanWordRepository: sl()),
    )
    ..registerLazySingleton(
      () => SaveNewRecentSearch(recentUrbanWordRepository: sl()),
    )
    ..registerLazySingleton<UrbanWordRepository>(
      () => UrbanWordRepositoryImpl(
        localDataSource: sl(),
        remoteDatasource: sl(),
        networkInfo: sl(),
      ),
    )
    ..registerLazySingleton<RecentUrbanWordRepository>(
      () => RecentUrbanWordRepositoryImpl(loadRecent: sl()),
    )

    // Datasource
    ..registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()),
    )
    ..registerLazySingleton(InternetConnectionChecker.new)
    ..registerLazySingleton<UrbanWordLocalDataSource>(
      UrbanWordLocalDataSourceImpl.new,
    )
    ..registerLazySingleton<RecentUrbanWordLocalDatasource>(
      RecentUrbanWordLocalDatasourceImpl.new,
    )
    ..registerLazySingleton<UrbanWordRemoteDatasource>(
      () => UrbanWordRemoteDatasourceImpl(dio: sl()),
    )
    ..registerFactory(Dio.new)

    // Global Logger
    ..registerLazySingleton(
      () => Logger(printer: SimplePrinter()),
    )

    // App Theme
    ..registerSingletonAsync<ThemeData>(() async {
      final themeStr = await rootBundle.loadString(app.themePath);
      final themeJson = jsonDecode(themeStr);
      return Future.value(ThemeDecoder.decodeThemeData(themeJson));
    });
}
