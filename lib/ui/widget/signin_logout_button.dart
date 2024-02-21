import 'package:binsar_farms_shipment_delivery/core/routes/routes.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';

Widget signin_logout_button(BuildContext context,{required String btnName,required String routePath}){
  return InkWell(
    onTap: () => goRouter.go(routePath),
    child: Container(
       height: 30,
       width: 250,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(5),
         color: context.primary
       ),
      child: Center(
        child: Text(
          btnName,
            style: context.displaySmall?.copyWith(color: context.background,fontSize: pixel18)
        ),
      ),
    ),
  );
}
