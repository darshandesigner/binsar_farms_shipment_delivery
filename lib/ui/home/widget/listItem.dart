import 'package:binsar_farms_shipment_delivery/core/routes/routes.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';

Widget listItem(BuildContext context, {required String imageName, required String Title, required String routePath}) {
  return InkWell(
    onTap: () => goRouter.pushNamed(routePath),
    child: Container(
      padding: const EdgeInsets.all(pixel15),
      child: Column(
        children: [
          Image.asset(
            imageName,
            height: pixel70,
            width: pixel70,
          ),
          height6,
          Text(
            Title,
            textAlign: TextAlign.center,
            style: context.titleSmall?.copyWith(color: context.primary),
          )
        ],
      ),
    ),
  );
}
