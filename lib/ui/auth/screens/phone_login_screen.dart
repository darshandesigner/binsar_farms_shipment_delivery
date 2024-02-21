import 'package:binsar_farms_shipment_delivery/core/routes/routes_name.dart';
import 'package:binsar_farms_shipment_delivery/ui/auth/widget/otpbox.dart';
import 'package:binsar_farms_shipment_delivery/ui/widget/signin_logout_button.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';

class PhoneLoginScreen extends StatefulWidget {
  const PhoneLoginScreen({super.key});

  @override
  State<PhoneLoginScreen> createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends State<PhoneLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                ImageAssets.mainLogo,
                width: 220,
                height: 180,
              ),
              Container(
                width:220,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SHIPMENT",
                      style: context.displaySmall?.copyWith(color: context.primary,fontSize: pixel17),
                    ),
                    Image.asset(
                      ImageAssets.truckLogo,
                      width: pixel45,
                      height: pixel45,
                    ),
                    Text(
                      "SOLUTION",
                      style: context.displaySmall?.copyWith(color: context.primary,fontSize: pixel17),
                    ),
                  ],
                ),
              ),
              height24,
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: context.primary,
                  )
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15,left: 15),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Mobile Number',
                        border: InputBorder.none
                       ),
                    ),
                  ),
                ),
              ),
              height32,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                     otpbox(context),
                     otpbox(context),
                     otpbox(context),
                     otpbox(context),
                ]
              ),
              height32,
              signin_logout_button(context,btnName: 'SIGN IN',routePath: RoutesName.home.path),
            ],
          ),
        ),
      ),
    );
  }
}
