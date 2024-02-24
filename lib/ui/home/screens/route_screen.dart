import 'package:binsar_farms_shipment_delivery/core/routes/routes.dart';
import 'package:binsar_farms_shipment_delivery/core/routes/routes_name.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/widget/deliverylistitem.dart';
import 'package:binsar_farms_shipment_delivery/ui/widget/back.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/colors.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_button.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_text.dart';
import 'package:flutter/material.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goRouter.canPop()
          ? AppBar(
              leading: goback(context),
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
            'ROUTE',
            style: context.titleLarge?.copyWith(color: context.primary, fontSize: pixel20),
          ),
          height10,
          Container(
            height: pixel30,
            padding: const EdgeInsets.symmetric(horizontal: pixel12),
            child: Row(
              children: [
                Expanded(
                    child: BinsarFilledButton(
                  name: 'START TRIP',
                  onTap: () {},
                  backgroundcolor: AppColors.statusGreen,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                )),
                width10,
                Expanded(
                    child: BinsarFilledButton(
                        name: 'END TRIP', onTap: () {}, backgroundcolor: AppColors.statusOrange, padding: const EdgeInsets.symmetric(vertical: 5))),
              ],
            ),
          ),
          height10,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: pixel16, vertical: pixel3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BText(
                  'EXPECTED DISTANCE COVERED:',
                  style: context.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                ),
                BText(
                  '180 KMS',
                  style: context.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: pixel16, vertical: pixel3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BText(
                  'NUMBER OF STOPOVERS:',
                  style: context.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
                ),
                BText(
                  '8',
                  style: context.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          height20,
          BinsarFilledButton(
            name: 'OPEN IN GOOGLE MAPS',
            onTap: () {},
            backgroundcolor: context.primary,
            padding: const EdgeInsets.symmetric(vertical: 5),
            width: 250,
          ),
          height16,
          Expanded(
              child: ListView(
            children: [
              deliveryListItem(context,
                  title: 'NOIDA HUB',
                  address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                  items: 3,
                  routePath: RoutesName.deliveriesdetail.name),
              deliveryListItem(context,
                  title: 'INDIRAPURAM HUB',
                  address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                  items: 3,
                  routePath: RoutesName.deliveriesdetail.name),
              deliveryListItem(context,
                  title: 'INDIRAPURAM HUB',
                  address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                  items: 3,
                  routePath: RoutesName.deliveriesdetail.name),
              deliveryListItem(context,
                  title: 'NOIDA HUB',
                  address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                  items: 3,
                  routePath: RoutesName.deliveriesdetail.name),
              deliveryListItem(context,
                  title: 'NOIDA HUB',
                  address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                  items: 3,
                  routePath: RoutesName.deliveriesdetail.name),
              deliveryListItem(context,
                  title: 'INDIRAPURAM HUB',
                  address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                  items: 3,
                  routePath: RoutesName.deliveriesdetail.name),
              deliveryListItem(context,
                  title: 'NOIDA HUB',
                  address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                  items: 3,
                  routePath: RoutesName.deliveriesdetail.name),
              deliveryListItem(context,
                  title: 'INDIRAPURAM HUB',
                  address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                  items: 3,
                  routePath: RoutesName.deliveriesdetail.name),
            ],
          ))
        ],
      ),
      // bottomNavigationBar: BinsarBottomNavigationbar(),
    );
  }
}
