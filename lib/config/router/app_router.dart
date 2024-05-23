
import 'package:go_router/go_router.dart';
import 'package:praxis_test_app/presentation/screens/home_screen.dart';

final appRouter = GoRouter(

  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
    ),

  ]

);