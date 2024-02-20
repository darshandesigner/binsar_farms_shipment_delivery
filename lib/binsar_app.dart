import 'package:binsar_farms_shipment_delivery/core/routes/routes.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';

class BinsarApp extends StatefulWidget {
  const BinsarApp({super.key});

  @override
  State<BinsarApp> createState() => _BinsarAppState();
}

class _BinsarAppState extends State<BinsarApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: goRouter,
      theme: AppThemeData.lightThemeData,
    );
  }
}
