import 'package:binsar_farms_shipment_delivery/ui/home/widget/pickuplistitem.dart';
import 'package:binsar_farms_shipment_delivery/ui/widget/back.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_bottomnavigationbar.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PickuplistScreen extends StatefulWidget {
  const PickuplistScreen({super.key});

  @override
  State<PickuplistScreen> createState() => _PickuplistScreenState();
}

class _PickuplistScreenState extends State<PickuplistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Goback(context),
        backgroundColor: context.background,
        centerTitle: true,
        title: Image.asset(
          ImageAssets.smallLogo,
          width: pixel40,
          height: pixel40,
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'PICKUP LIST',
              style: context.titleLarge?.copyWith(color: context.primary, fontSize: pixel20),
            ),
            height10,
            Expanded(
              child: ListView(
                
                  children: [
                    pickuplistItem(context, imagename: ImageAssets.farmmilkbottle, title: 'FRESH FARM MILK', packing: '1 Litre,Bottle', quantity: 300),
                    pickuplistItem(context, imagename: ImageAssets.cowmilkpouch, title: 'COW FARM POUCH', packing: '500 ML,Pouch', quantity: 300),
                    pickuplistItem(context, imagename: ImageAssets.paneer, title: 'PANEER', packing: '400 gms,Packet', quantity: 30),
                    pickuplistItem(context, imagename: ImageAssets.farmmilk, title: 'FRESH FARM MILK', packing: '1 Litre,Bottle', quantity: 10),
                  ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BinsarBottomNavigationbar(),
    );
  }
}
