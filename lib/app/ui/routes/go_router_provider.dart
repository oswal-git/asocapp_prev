import 'package:asocapp/app/ui/pages/pages.dart';
import 'package:asocapp/app/ui/routes/router_name.dart';
import 'package:go_router/go_router.dart';

// final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey(debugLabel: 'root');
// final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey(debugLabel: 'shell');

class GoRouterProvider {
  static final GoRouter router = GoRouter(
    // navigatorKey: _rootNavigatorKey,
    initialLocation: homeRoute,
    routes: [
      GoRoute(
        path: homeRoute,
        builder: (context, state) => HomePage(key: state.pageKey),
      ),
      GoRoute(
        path: loginRoute,
        builder: (context, state) => LoginPage(key: state.pageKey),
      ),
      GoRoute(
        path: dashBoardRoute,
        builder: (context, state) => DashBoardPage(key: state.pageKey),
      ),
    ],
  );
}
