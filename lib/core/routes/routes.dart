import 'package:binsar_farms_shipment_delivery/core/routes/routes_name.dart';
import 'package:binsar_farms_shipment_delivery/ui/auth/screens/phone_login_screen.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/screens/home_screen.dart';
import 'package:binsar_farms_shipment_delivery/ui/splash/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter goRouter = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: RoutesName.splash.path,
  routes: [
    GoRoute(
      path: RoutesName.splash.path,
      name: RoutesName.splash.name,
      builder: (BuildContext context, GoRouterState state) {
        return SplashScreen();
      },
    ),
    GoRoute(
      path: RoutesName.login.path,
      name: RoutesName.login.name,
      builder: (BuildContext context, GoRouterState state) {
        return PhoneLoginScreen();
      },
    ),
    GoRoute(
      path: RoutesName.home.path,
      name: RoutesName.home.name,
      builder: (BuildContext context, GoRouterState state) {
        return HomeScreen();
      },
    )
  ],
  errorBuilder: (BuildContext context, GoRouterState state) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Under Development'),
      ),
    );
  },
);
