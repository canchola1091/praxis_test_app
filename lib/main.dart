import 'package:flutter/material.dart';
import 'package:praxis_test_app/config/theme/app_theme.dart';
import 'package:praxis_test_app/presentation/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praxis Test App',
      theme: AppTheme(selectedColor: 6).theme(),
      home: const HomeScreen()
    );
  }
}