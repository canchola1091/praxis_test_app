
import 'package:flutter/material.dart';
import 'package:praxis_test_app/config/theme/app_theme.dart';

class CustomFab extends StatelessWidget {

  final void Function()? btnFunction;

  const CustomFab({
    super.key,
    required this.btnFunction
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: colorThemes[2],
      onPressed: btnFunction,
      child: const Icon(
        Icons.arrow_circle_right_sharp,
        color: Colors.white,
      ),
    );
  }

  
}