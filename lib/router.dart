/*
 * "doodle_wear" created by @howyoujini on 1/27/24  10:52 PM
 * Copyright (c) . All rights reserved.
 */
part of 'doodle_app.dart';

class DoodleWearRoute {
  static const String home = '/';
  static const String setting = '/setting';
  static final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    initialLocation: home,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (BuildContext context, GoRouterState state, Widget child) {
          return NoTransitionPage(child: DoodleWearScaffold(location: "/home", child: child));
        },
        routes: <RouteBase>[
          GoRoute(
            path: home,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return const NoTransitionPage(
                child: Scaffold(
                  // flutter 에서 키보드가 올라왔을 때, bottom resize를 방어하기 위한 속성
                  resizeToAvoidBottomInset: false,
                  body: HomeScreen(),
                ),
              );
            },
          ),
          GoRoute(
            path: setting,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return NoTransitionPage(
                child: Scaffold(
                  // flutter 에서 키보드가 올라왔을 때, bottom resize를 방어하기 위한 속성
                  resizeToAvoidBottomInset: false,
                  appBar: AppBar(
                    notificationPredicate: (_) => false,
                    centerTitle: false,
                    title: Text('setting', style: TILTextStyle.h2()),
                  ),
                  body: const SafeArea(
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0), child: SettingScreen())),
                ),
              );
            },
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/login',
        pageBuilder: (context, state) {
          return NoTransitionPage(
            key: UniqueKey(),
            child: Scaffold(
              appBar: AppBar(),
              body: const Center(
                child: Text("Login"),
              ),
            ),
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/setting/smartwatch',
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: UniqueKey(),
            child: const AlarmSettingPage(),
            transitionsBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation, Widget child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            },
          );
        },
      ),
    ],
  );
}
