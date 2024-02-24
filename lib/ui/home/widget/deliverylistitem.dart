import 'package:binsar_farms_shipment_delivery/core/routes/routes.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/buid_context_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/colors.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_text.dart';
import 'package:flutter/material.dart';

Widget deliveryListItem(BuildContext context, {required String title, required String routePath, required String address, required int items}) {
  return InkWell(
    onTap: () {
      goRouter.pushNamed(routePath);
    },
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: pixel12, vertical: pixel2),
      padding: const EdgeInsets.all(pixel10),
      height: pixel110,
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
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BText(
                        title,
                        style: context.titleLarge?.copyWith(color: context.primary, fontWeight: FontWeight.bold),
                      ),
                      BText(
                        address,
                        style: context.bodySmall?.copyWith(color: AppColors.textColor, fontWeight: FontWeight.bold),
                      ),
                      BText(
                        '$items Items',
                        style: context.bodySmall?.copyWith(fontWeight: FontWeight.bold, color: context.primary),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          width24,
          IconButton(
              iconSize: 25,
              onPressed: () {
                context.pushNamedAndRemoveUntil(routePath);
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: context.primary,
              ))
        ],
      ),
    ),
  );
}
