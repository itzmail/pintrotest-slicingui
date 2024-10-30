part of 'router.dart';

class NavigationHelper {
  static final NavigationHelper _instance = NavigationHelper._internal();

  static NavigationHelper get instance => _instance;

  static late final GoRouter router;
  late GoRouterObserver observer;

  static final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> homeTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> searchTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> settingsTabNavigatorKey =
      GlobalKey<NavigatorState>();

  BuildContext get context =>
      router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser =>
      router.routeInformationParser;

  factory NavigationHelper() {
    return _instance;
  }

  NavigationHelper._internal() {
    observer = GoRouterObserver();
    final routes = [
      GoRoute(
          path: RoutePath.registration.path,
          name: RoutePath.registration.name,
          pageBuilder: (context, state) {
            return getPage(
              child: const RegistrationScreen(),
              state: state,
            );
          }),
      GoRoute(
        path: RoutePath.document.path,
        name: RoutePath.document.name,
        pageBuilder: (context, state) =>
            getPage(child: const DocumentScreen(), state: state),
      ),
    ];

    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      debugLogDiagnostics: true,
      // initialLocation: RouterUrl.splashPath,
      routes: routes,
      // observers: [observer],
      /* errorPageBuilder: (context, state) {
        return getPage(
          child: const ErrorScreen(),
          state: state,
        );
      }, */
    );
    observer.setGoRouter(router);
  }

  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
          child: child,
        );
      },
    );
  }
}

class GoRouterObserver extends NavigatorObserver {
  late GoRouter goRouter;

  void setGoRouter(GoRouter router) {
    goRouter = router;
  }

  String get currentRouteName {
    return goRouter.routerDelegate.currentConfiguration.uri.toString();
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // changeColorTopBar(routePath: currentRouteName);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // changeColorTopBar(routePath: currentRouteName);
    // logger('MyTest didPop: $route');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // changeColorTopBar(routePath: currentRouteName);
    // logger('MyTest didRemove: $route');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    // changeColorTopBar(routePath: currentRouteName);
    // logger('MyTest didReplace: $newRoute');
  }
}
