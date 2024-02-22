import 'dart:async';
import 'package:binsar_farms_shipment_delivery/core/routes/routes_name.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/buid_context_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      const Duration(seconds: 2),
      () {
        // goRouter.goNamed(RoutesName.login.name);
        context.pushNamedAndRemoveUntil(RoutesName.login.name);
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
            SizedBox(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "SHIPMENT",
                    style: context.headlineSmall?.copyWith(color: context.primary),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    ImageAssets.truckLogo,
                    width: pixel60,
                    height: pixel60,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "SOLUTION",
                    style: context.headlineSmall?.copyWith(color: context.primary),
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
