import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:flutter/material.dart';

Widget otpbox(BuildContext context){
  return Container(
    constraints: BoxConstraints.tight(Size.square(40)),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: context.primary,
      )
    ),
    child: Center(
      child: CircleAvatar(
        radius: 4,
        backgroundColor: context.primary,
      ),
    ),
  );
}