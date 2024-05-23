import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:praxis_test_app/config/router/app_router.dart';
import 'package:praxis_test_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Praxis Test App',
      routeInformationParser: appRouter.routeInformationParser,
      routerDelegate: appRouter.routerDelegate,
      routeInformationProvider: appRouter.routeInformationProvider,
      theme: AppTheme(selectedColor: 4).theme()
    );
  }
}