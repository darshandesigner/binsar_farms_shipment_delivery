import 'package:binsar_farms_shipment_delivery/core/routes/routes.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/model/listItemModel.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';

Widget listItem(BuildContext context,{required int index}){
  List<listItemModel> list = [
    listItemModel(imageName: ImageAssets.pickuplist, Title: 'PICKUP LIST', routePath: ''),
    listItemModel(imageName: ImageAssets.deliveries, Title: 'DELIVERIES', routePath: ''),
    listItemModel(imageName: ImageAssets.delivaryRoute, Title: 'DELIVERY ROUTE', routePath: ''),
    listItemModel(imageName: ImageAssets.shipmentSummary, Title: 'SHIPMENT SUMMARY', routePath: ''),
    listItemModel(imageName: ImageAssets.attendance, Title: 'ATTENDANCE', routePath: ''),
    listItemModel(imageName: ImageAssets.SOS, Title: 'SOS', routePath: ''),
  ];
  return InkWell(
    onTap: () => goRouter.go(list[index].routePath),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 3),
      child: Column(
        children: [
          Image.asset(
            list[index].imageName,
            height: pixel70,
            width: pixel70,
          ),
          height10,
          Container(
            width: 100,
            height: 39,
            child: Center(
              child: Text(
                list[index].Title,
                textAlign: TextAlign.center,
                textScaler: TextScaler.linear(1),
                style: context.titleSmall?.copyWith(color: context.primary),
              ),
            ),
          )
        ],
      ),
    ),
  );
}