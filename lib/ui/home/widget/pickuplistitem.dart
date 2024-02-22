import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/colors.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_button.dart';
import 'package:flutter/material.dart';

Widget pickuplistItem(BuildContext context,{required String imagename,required String title,required String packing,required int quantity}){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: pixel12,vertical: pixel10),
    padding: EdgeInsets.all(pixel6),
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
                Image.asset(
                  imagename,
                ),
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.titleLarge?.copyWith(color: context.primary,fontWeight: FontWeight.bold),
                    ),
                    height4,
                    Text(
                      packing,
                      style: context.bodySmall?.copyWith(color: AppColors.lightTextColor),
                    ),
                    Text(
                      '$quantity',
                      style: context.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                ),)
              ],
            ),
          ),
          width24,
          BinsarFilledButton(
            name: 'CONFIRM',
            padding: EdgeInsets.symmetric(vertical: 4,horizontal: 2),
            onTap: () {

            },
            width: pixel100,
            backgroundcolor: AppColors.statusGreen,
          )
        ],
      ),

    ),
  );
}