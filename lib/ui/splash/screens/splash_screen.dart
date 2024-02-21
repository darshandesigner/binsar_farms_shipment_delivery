import 'dart:async';
import 'package:binsar_farms_shipment_delivery/core/routes/routes.dart';
import 'package:binsar_farms_shipment_delivery/core/routes/routes_name.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
          () {
            goRouter.goNamed(RoutesName.login.name);
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              ImageAssets.mainLogo,
              width: 300,
              height: 240,
            ),
            Container(
              width: 300,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SHIPMENT",
                    style: context.displaySmall?.copyWith(color: context.primary,fontSize: pixel25),
                  ),
                  Image.asset(
                    ImageAssets.truckLogo,
                    width: pixel60,
                    height: pixel60,
                  ),
                  Text(
                    "SOLUTION",
                    style: context.displaySmall?.copyWith(color: context.primary,fontSize: pixel25),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
