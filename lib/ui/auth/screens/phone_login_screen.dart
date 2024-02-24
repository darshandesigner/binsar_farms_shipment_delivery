import 'package:binsar_farms_shipment_delivery/core/routes/routes_name.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/buid_context_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_button.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_text.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';

class PhoneLoginScreen extends StatefulWidget {
  const PhoneLoginScreen({super.key});

  @override
  State<PhoneLoginScreen> createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends State<PhoneLoginScreen> {
  OtpFieldController otpController = OtpFieldController();

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
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BText(
                    "SHIPMENT",
                    style: context.titleSmall?.copyWith(color: context.primary),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    ImageAssets.truckLogo,
                    width: pixel45,
                    height: pixel45,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  BText(
                    "SOLUTION",
                    style: context.titleSmall?.copyWith(color: context.primary),
                  ),
                ],
              ),
              height24,
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: context.primary, width: 2)),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: context.primary, width: 2)),
                    border: OutlineInputBorder(borderSide: BorderSide(color: context.primary, width: 2)),
                    hintText: "Mobile Number",
                    contentPadding: const EdgeInsets.all(10)),
              ),
              height32,
              OTPTextField(
                controller: otpController,
                length: 4,
                // obscureText: true,
                fieldStyle: FieldStyle.box,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 50,
                keyboardType: TextInputType.number,
                style: TextStyle(color: context.primary, fontSize: 30),
                contentPadding: EdgeInsets.zero,
                otpFieldStyle: OtpFieldStyle(
                  errorBorderColor: Colors.red,
                  disabledBorderColor: context.primary,
                  enabledBorderColor: context.primary,
                  focusBorderColor: context.primary,
                ),
              ),
              height32,
              BinsarFilledButton(
                borderRadius: BorderRadius.circular(8),
                padding: const EdgeInsets.symmetric(vertical: 10),
                name: "SIGN IN",
                onTap: () {
                  context.pushNamedAndRemoveUntil(RoutesName.home.name);
                },
                width: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
