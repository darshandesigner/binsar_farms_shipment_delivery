import 'package:binsar_farms_shipment_delivery/core/routes/routes_name.dart';
import 'package:binsar_farms_shipment_delivery/ui/auth/screens/phone_login_screen.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/screens/attendance_screen.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/screens/deliveries_screen.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/screens/delivery_detail_screen.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/screens/delivery_summary.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/screens/home_screen.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/screens/pickuplist_screen.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/screens/route_screen.dart';
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
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: RoutesName.login.path,
      name: RoutesName.login.name,
      builder: (BuildContext context, GoRouterState state) {
        return const PhoneLoginScreen();
      },
    ),
    GoRoute(
      path: RoutesName.home.path,
      name: RoutesName.home.name,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: RoutesName.pickuplist.path,
      name: RoutesName.pickuplist.name,
      builder: (BuildContext context, GoRouterState state) {
        return const PickuplistScreen();
      },
    ),
    GoRoute(
      path: RoutesName.deliveries.path,
      name: RoutesName.deliveries.name,
      builder: (BuildContext context, GoRouterState state) {
        return const Deliveries();
      },
    ),
    GoRoute(
      path: RoutesName.deliveriesdetail.path,
      name: RoutesName.deliveriesdetail.name,
      builder: (BuildContext context, GoRouterState state) {
        return const DeliveryDetail();
      },
    ),
    GoRoute(
      path: RoutesName.route.path,
      name: RoutesName.route.name,
      builder: (BuildContext context, GoRouterState state) {
        return const RouteScreen();
      },
    ),
    GoRoute(
      path: RoutesName.deliverySummary.path,
      name: RoutesName.deliverySummary.name,
      builder: (BuildContext context, GoRouterState state) {
        return const DeliverySummary();
      },
    ),
    GoRoute(
      path: RoutesName.attendance.path,
      name: RoutesName.attendance.name,
      builder: (BuildContext context, GoRouterState state) {
        return const AttendanceScreen();
      },
    ),
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
