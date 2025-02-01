import 'package:go_router/go_router.dart';
import 'package:pays/feature/home_screen/ui/screen/home_screen.dart';
import 'package:pays/feature/mycard/ui/screen/mycart_screen.dart';
import 'package:pays/feature/payment_details/ui/screen/payment_details.dart';
import 'package:pays/feature/thank_you_screen/ui/screen/thank_you_screen.dart';

final GoRouter routerApp = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/mycardscreen',
      builder: (context, state) => MycartScreen(),
    ),
     GoRoute(
      path: '/paymentdetails',
      builder: (context, state) => PaymentDetails(),
    ),
     GoRoute(
      path: '/thankyouscreen',
      builder: (context, state) => ThankYouScreen(),
    ),
  ],
);
