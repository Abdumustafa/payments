import 'package:go_router/go_router.dart';
import 'package:pays/feature/home_screen/ui/screen/home_screen.dart';


final GoRouter routerApp = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
   
  ],
);
