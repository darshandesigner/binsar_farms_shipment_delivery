import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
              height: 300,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "SHIPMENT",
                  style: Theme.of(context).textTheme.displaySmall,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
