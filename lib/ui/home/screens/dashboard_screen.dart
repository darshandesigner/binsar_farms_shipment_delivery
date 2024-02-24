import 'package:binsar_farms_shipment_delivery/core/routes/routes_name.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/widget/listItem.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/buid_context_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_button.dart';
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
          Text(
            'HOME',
            style: context.titleLarge?.copyWith(color: context.primary, fontSize: pixel20),
          ),
          height32,
          Row(
            children: [
              Expanded(child: listItem(context, imageName: ImageAssets.pickuplist, Title: 'PICKUP LIST', routePath: RoutesName.pickuplist.name)),
              Expanded(
                child: listItem(context, imageName: ImageAssets.deliveries, Title: 'DELIVERIES', routePath: RoutesName.deliveries.name),
              )
            ],
          ),
          Row(
            children: [
              Expanded(child: listItem(context, imageName: ImageAssets.delivaryRoute, Title: 'DELIVERY\nROUTE', routePath: RoutesName.route.name)),
              Expanded(
                  child: listItem(context,
                      imageName: ImageAssets.shipmentSummary, Title: 'SHIPMENT\nSUMMARY', routePath: RoutesName.deliverySummary.name)),
            ],
          ),
          Row(
            children: [
              Expanded(child: listItem(context, imageName: ImageAssets.attendance, Title: 'ATTENDANCE', routePath: RoutesName.attendance.name)),
              Expanded(child: listItem(context, imageName: ImageAssets.SOS, Title: 'SOS', routePath: '')),
            ],
          ),
          height32,
          BinsarFilledButton(
            borderRadius: BorderRadius.circular(pixel8),
            padding: EdgeInsets.symmetric(vertical: pixel10),
            width: 250,
            name: "LOG OUT",
            onTap: () => context.pushNamedAndRemoveUntil(RoutesName.login.name),
          )
        ],
      ),
    );
  }
}
