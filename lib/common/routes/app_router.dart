import 'package:go_router/go_router.dart';
import 'package:com_lvoxx_urban_dictionary/app/views/error/error_route_screen.dart';
import 'package:com_lvoxx_urban_dictionary/app/views/error/not_found_screen.dart';
import 'package:com_lvoxx_urban_dictionary/app/views/init_view.dart';
import 'package:com_lvoxx_urban_dictionary/app/views/skeleton/skeleton_screen.dart';
import 'package:com_lvoxx_urban_dictionary/core/constant/string.dart' as router;

class AppRouter {
  const AppRouter._();

  static final GoRouter routes = GoRouter(
    initialLocation: router.initRoute,
    errorBuilder: (context, state) => ErrorRouteScreen(exception: state.error),
    routes: <GoRoute>[
      GoRoute(
        path: router.initRoute,
        builder: (context, state) => const InitScreen(),
      ),
      GoRoute(
        path: router.skeletonRoute,
        builder: (context, state) => const SkeletonScreen(),
      ),
      GoRoute(
        path: router.notFoundRoute,
        builder: (context, state) => NotFoundScreen(exception: state.error),
      ),
    ],
  );
}
