import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';

class DeliverySummary extends StatefulWidget {
  const DeliverySummary({super.key});

  @override
  State<DeliverySummary> createState() => _DeliverySummaryState();
}

class _DeliverySummaryState extends State<DeliverySummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: context.primaryContainer,
        title: SizedBox(
            width: pixel50,
            child: Image.asset(
              ImageAssets.logo,
            )),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: pixel16),
        child: Column(
          children: [
            Text(
              "DELIVERY SUMMARY",
              textAlign: TextAlign.center,
              style: context.titleLarge?.copyWith(color: context.primary),
            ),
            height10,
            Container(
              padding: const EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 16),
              color: context.secondaryContainer,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: context.primary,
                  ),
                  Text(
                    "FEBRUARY,2024",
                    style: context.titleLarge?.copyWith(color: context.primary),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: context.primary,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(16),
              child: ListView.builder(
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(bottom: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: context.secondaryContainer),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "11-Feb-2024",
                            style: context.titleLarge?.copyWith(color: context.primary),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: context.primary,
                          )
                        ],
                      ),
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }
}
