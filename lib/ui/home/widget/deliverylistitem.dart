import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/buid_context_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/colors.dart';
import 'package:flutter/material.dart';

Widget DeliveryListItem(BuildContext context,{required String title,required String routePath,required String address,required int items}){
  return  Container(
    margin: EdgeInsets.symmetric(horizontal: pixel12,vertical: pixel2),
    padding: EdgeInsets.all(pixel10),
    height: pixel110,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(pixel10),
        border: Border.all(
          color: AppColors.lightGrey,
        )
    ),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [

                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.titleLarge?.copyWith(color: context.primary,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      address,
                      style: context.bodySmall?.copyWith(color: AppColors.textColor,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$items Items',
                      style: context.bodySmall?.copyWith(fontWeight: FontWeight.bold,color: context.primary),
                    )
                  ],
                ),)
              ],
            ),
          ),
          width24,
          IconButton(
            iconSize: 25,
              onPressed: () {
                context.pushNamedAndRemoveUntil(routePath);
              },
              icon: Icon(Icons.arrow_forward_ios,color: context.primary,)
          )
        ],
      ),

    ),
  );
}