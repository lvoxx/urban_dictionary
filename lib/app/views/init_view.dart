import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:com_lvoxx_urban_dictionary/app/bloc/app_bloc/app_bloc.dart';
import 'package:com_lvoxx_urban_dictionary/app/bloc/app_bloc/app_event.dart';
import 'package:com_lvoxx_urban_dictionary/app/bloc/app_bloc/app_state.dart';
import 'package:com_lvoxx_urban_dictionary/core/constant/string.dart' as router;

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, UrbanWordState>(
      listener: (context, state) {
        state.whenOrNull(
          loadLocalFailed: (failure) => BlocProvider.of<AppBloc>(context)
              .add(const TryGetFirstRandomUrbanWords()),
          loadedData: (data) {
            FlutterNativeSplash.remove();
            context.go(router.skeletonRoute);
          },
          initFailed: (failure) {
            FlutterNativeSplash.remove();
            context.go(router.notFoundRoute);
          },
        );
      },
      child: Scaffold(
        body: Container(),
        backgroundColor: Colors.white,
      ),
    );
  }
}
