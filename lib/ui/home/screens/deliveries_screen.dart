import 'package:binsar_farms_shipment_delivery/core/routes/routes_name.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/widget/deliverylistitem.dart';
import 'package:binsar_farms_shipment_delivery/ui/widget/back.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_bottomnavigationbar.dart';
import 'package:flutter/material.dart';

class Deliveries extends StatefulWidget {
  const Deliveries({super.key});

  @override
  State<Deliveries> createState() => _DeliveriesState();
}

enum OrderStatus { Pending, Completed }

class _DeliveriesState extends State<Deliveries> {
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
              'DELIVERIES',
              style: context.titleLarge
                  ?.copyWith(color: context.primary, fontSize: pixel20),
            ),
            height10,
            Container(
              width: double.infinity,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: pixel12),
              child: SegmentedButton(
                multiSelectionEnabled: false,
                showSelectedIcon: false,
                emptySelectionAllowed: false,
                style: ButtonStyle(
                  fixedSize:
                      MaterialStatePropertyAll(Size(double.infinity, 40)),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.disabled)) {
                      return context.background; // Set disabled color
                    } else {
                      return context.primary; // Set enabled color
                    }
                  }),
                  shape: MaterialStatePropertyAll(OutlinedBorder.lerp(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(width: 10.0,color: context.primary),
                      ),
                      RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(8),
                        side: BorderSide(width: 10.0,color: context.primary),
                      ),
                      BorderSide.strokeAlignCenter)),
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.disabled)) {
                      return context.primary; // Set disabled color
                    } else {
                      return context.background; // Set enabled color
                    }
                  }),
                ),
                segments: <ButtonSegment<OrderStatus>>[
                  ButtonSegment<OrderStatus>(
                    enabled: false,
                    value: OrderStatus.Pending,
                    label: Text(
                      'PENDING',
                      //style: context.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ButtonSegment<OrderStatus>(
                    enabled: true,
                    value: OrderStatus.Completed,
                    label: Text('COMPLETED',
                        //style: context.bodyMedium?.copyWith(fontWeight: FontWeight.bold)
                    ),
                  ),
                ],
                selected: <OrderStatus>{OrderStatus.Completed},
                onSelectionChanged: (Set<OrderStatus> newSelection) {},
              ),
            ),
            height2,
            Expanded(
                child: ListView(
              children: [
                DeliveryListItem(context,
                    title: 'NOIDA HUB',
                    address:
                        'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'INDIRAPURAM HUB',
                    address:
                        'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'INDIRAPURAM HUB',
                    address:
                        'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'NOIDA HUB',
                    address:
                        'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'NOIDA HUB',
                    address:
                        'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'INDIRAPURAM HUB',
                    address:
                        'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'NOIDA HUB',
                    address:
                        'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'INDIRAPURAM HUB',
                    address:
                        'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: BinsarBottomNavigationbar(),
    );
  }
}
