import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/colors.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_button.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_text.dart';
import 'package:flutter/material.dart';

Widget pickuplistItem(BuildContext context, {required String imagename, required String title, required String packing, required int quantity}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: pixel12, vertical: pixel10),
    padding: const EdgeInsets.all(pixel6),
    // height: pixel110,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(pixel10),
        border: Border.all(
          color: AppColors.lightGrey,
        )),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              Image.asset(
                imagename,
                width: 76,
                height: 76,
                scale: 1.0,
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BText(
                      title,
                      style: context.titleLarge?.copyWith(color: context.primary, fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                    height4,
                    BText(
                      packing,
                      style: context.bodySmall?.copyWith(color: AppColors.lightTextColor, fontSize: 11),
                    ),
                    BText(
                      '$quantity',
                      style: context.titleLarge?.copyWith(fontWeight: FontWeight.bold, fontSize: 24),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        BinsarFilledButton(
          name: 'CONFIRM',
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
          onTap: () {},
          // width: pixel100,
          backgroundcolor: AppColors.statusGreen,
        )
      ],
    ),
  );
}
