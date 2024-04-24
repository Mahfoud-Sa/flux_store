import 'package:flutter/material.dart';
import 'package:flux_store/app/features/Auth/presentation/pages/forget_password_page.dart';
import 'package:flux_store/app/features/Auth/presentation/pages/login_page.dart';
import 'package:flux_store/app/features/onbording/presentation/pages/onbording_page.dart';
import 'package:flux_store/app/features/onbording/presentation/pages/welcome_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const WelcomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'Onbording',
          builder: (BuildContext context, GoRouterState state) {
            return OnbordingPage();
          },
        ),
        GoRoute(
          path: 'Login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: 'ForgetPassword',
          builder: (BuildContext context, GoRouterState state) {
            return const ForgetPasswordPage();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flux Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
