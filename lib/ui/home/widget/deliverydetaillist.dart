import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/colors.dart';
import 'package:flutter/material.dart';

Widget deliveryDetailListItem(BuildContext context,{required String title,required String imageName,required String packing,required int quantity}){
  return  SizedBox(
    height: pixel90,
    child: Column(
      children: [
        Divider(color: AppColors.lightGrey,),
        height10,
        Container(
          padding:EdgeInsets.only(left: pixel10,right: pixel30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset(
                      imageName,
                      height: pixel50,
                      width: pixel50,
                    ),
                    Expanded(
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: context.titleLarge?.copyWith(color: context.primary,fontWeight: FontWeight.bold),
                        ),
                        height10,
                        Text(
                          packing,
                          style: context.bodySmall?.copyWith(color: AppColors.lightTextColor),
                        ),
                      ],
                    ),)
                  ],
                ),
              ),
              width24,
              Text(
                '$quantity',
                style: context.titleLarge,
              )
            ],
          ),
        ),
      ],
    ),
  );
}