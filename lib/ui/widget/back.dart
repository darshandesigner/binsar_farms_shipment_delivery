import 'package:binsar_farms_shipment_delivery/core/routes/routes.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Widget Goback(BuildContext context){
  return IconButton(
      onPressed: () {
        goRouter.pop();
      },
      icon: Icon(Icons.keyboard_backspace,color: context.primary,)
  );
}