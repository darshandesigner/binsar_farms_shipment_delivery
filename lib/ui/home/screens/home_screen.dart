import 'package:binsar_farms_shipment_delivery/core/routes/routes_name.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/widget/listItem.dart';
import 'package:binsar_farms_shipment_delivery/ui/widget/back.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/buid_context_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_bottomnavigationbar.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double BottomNavigtionbariconSize = 30;
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
        body: Column(
          children: [
            Text(
              'HOME',
              style: context.titleLarge?.copyWith(color: context.primary, fontSize: pixel20),
            ),
            height32,
            Row(
              children: [
                Expanded(child: listItem(context,imageName: ImageAssets.pickuplist, Title: 'PICKUP LIST', routePath: RoutesName.pickuplist.name)),
                Expanded(child: listItem(context,imageName: ImageAssets.deliveries, Title: 'DELIVERIES', routePath: RoutesName.deliveries.name),)
              ],
            ),
            Row(
              children: [
                Expanded(child: listItem(context,imageName: ImageAssets.delivaryRoute, Title: 'DELIVERY\nROUTE', routePath: RoutesName.route.name)),
                Expanded(child: listItem(context,imageName: ImageAssets.shipmentSummary, Title: 'SHIPMENT\nSUMMARY', routePath:'')),
              ],
            ),
            Row(
              children: [
                Expanded(child: listItem(context,imageName: ImageAssets.attendance, Title: 'ATTENDANCE', routePath: '')),
                Expanded(child: listItem(context,imageName: ImageAssets.SOS, Title: 'SOS', routePath: '')),
              ],
            ),
            height32,
            BinsarFilledButton(
              borderRadius: BorderRadius.circular(pixel8),
              padding: EdgeInsets.symmetric(vertical: pixel5),
              width: 250,
              name: "LOG OUT",
              onTap:() =>  context.pushNamedAndRemoveUntil(RoutesName.login.name),
            )
          ],
        ),
        bottomNavigationBar: BinsarBottomNavigationbar()
    );
  }
}
