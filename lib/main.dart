import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sanctuary_flutter/authentication/login_screen.dart';
import 'package:sanctuary_flutter/authentication/personal_info_screen.dart';
import 'package:sanctuary_flutter/authentication/register_screen.dart';
import 'package:sanctuary_flutter/core/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Router Set up
  final GoRouter _router = GoRouter(
    initialLocation: kLoginPath,
    routes: [
      GoRoute(
        path: kLoginPath,
        name: kLoginRoute,
        builder: (context, state) {
          return LoginScreen();
        },
      ),
      GoRoute(
        path: kRegisterPath,
        name: kRegisterRoute,
        builder: (context, state) {
          return RegisterScreen();
        },
      ),
      GoRoute(
        path: kPersonalInfoPath,
        name: kPersonalInfoRoute,
        builder: (context, state) {
          return PersonalInfoScreen();
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: kAppName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}
