import 'package:binsar_farms_shipment_delivery/core/routes/routes.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/widget/pickuplistitem.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_text.dart';
import 'package:flutter/material.dart';

class PickuplistScreen extends StatefulWidget {
  const PickuplistScreen({super.key});

  @override
  State<PickuplistScreen> createState() => _PickuplistScreenState();
}

class _PickuplistScreenState extends State<PickuplistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goRouter.canPop()
          ? AppBar(
              // leading: Goback(context),
              iconTheme: IconThemeData(color: context.primary),
              backgroundColor: context.background,
              centerTitle: true,
              title: Image.asset(
                ImageAssets.smallLogo,
                width: pixel40,
                height: pixel40,
              ),
            )
          : null,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BText(
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
      // bottomNavigationBar: BinsarBottomNavigationbar(),
    );
  }
}
