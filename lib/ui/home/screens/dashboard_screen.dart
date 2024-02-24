import 'package:binsar_farms_shipment_delivery/core/routes/routes.dart';
import 'package:binsar_farms_shipment_delivery/core/routes/routes_name.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/widget/list_item.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/buid_context_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_button.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_text.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BText(
            'HOME',
            style: context.titleLarge?.copyWith(color: context.primary, fontSize: pixel20),
          ),
          height32,
          Row(
            children: [
              Expanded(
                  child: ListItem(
                imageName: ImageAssets.pickuplist,
                title: 'PICKUP LIST',
                onTap: () {
                  goRouter.pushNamed(RoutesName.pickuplist.name);
                },
              )),
              Expanded(
                  child: ListItem(
                imageName: ImageAssets.deliveries,
                title: 'DELIVERIES',
                onTap: () {
                  goRouter.pushNamed(RoutesName.deliveries.name);
                },
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: ListItem(
                imageName: ImageAssets.delivaryRoute,
                title: 'DELIVERY\nROUTE',
                onTap: () {
                  goRouter.pushNamed(RoutesName.route.name);
                },
              )),
              Expanded(
                  child: ListItem(
                imageName: ImageAssets.shipmentSummary,
                title: 'SHIPMENT\nSUMMARY',
                onTap: () {
                  goRouter.pushNamed(RoutesName.deliverySummary.name);
                },
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: ListItem(
                imageName: ImageAssets.attendance,
                title: 'ATTENDANCE',
                onTap: () {
                  goRouter.pushNamed(RoutesName.attendance.name);
                },
              )),
              Expanded(
                  child: ListItem(
                imageName: ImageAssets.SOS,
                title: 'SOS',
                onTap: () {},
              )),
            ],
          ),
          height32,
          BinsarFilledButton(
            borderRadius: BorderRadius.circular(pixel8),
            padding: const EdgeInsets.symmetric(vertical: pixel10),
            width: 250,
            name: "LOG OUT",
            onTap: () => context.pushNamedAndRemoveUntil(RoutesName.login.name),
          )
        ],
      ),
    );
  }
}
