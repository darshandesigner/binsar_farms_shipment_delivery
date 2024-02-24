import 'package:binsar_farms_shipment_delivery/core/routes/routes.dart';
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
  bool isPending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: goRouter.canPop()
          ? AppBar(
              leading: Goback(context),
              backgroundColor: context.background,
              centerTitle: true,
              title: Image.asset(
                ImageAssets.smallLogo,
                width: pixel40,
                height: pixel40,
              ),
            )
          : null,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'DELIVERIES',
              style: context.titleLarge?.copyWith(color: context.primary, fontSize: pixel20),
            ),
            height10,
            // Container(
            //   width: double.infinity,
            //   // height: 40,
            //   padding: const EdgeInsets.symmetric(horizontal: pixel12),
            //   child: SegmentedButton(
            //     multiSelectionEnabled: false,
            //     showSelectedIcon: false,
            //     emptySelectionAllowed: false,
            //     style: ButtonStyle(
            //       fixedSize: const MaterialStatePropertyAll(Size(double.infinity, 30)),
            //       backgroundColor: MaterialStateProperty.resolveWith((states) {
            //         if (states.contains(MaterialState.disabled)) {
            //           return context.background; // Set disabled color
            //         } else {
            //           return context.primary; // Set enabled color
            //         }
            //       }),
            //       shape: MaterialStatePropertyAll(OutlinedBorder.lerp(
            //           RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8),
            //             side: BorderSide(width: 10.0, color: context.primary),
            //           ),
            //           RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8),
            //             side: BorderSide(width: 10.0, color: context.primary),
            //           ),
            //           BorderSide.strokeAlignCenter)),
            //       foregroundColor: MaterialStateProperty.resolveWith((states) {
            //         if (states.contains(MaterialState.disabled)) {
            //           return context.primary; // Set disabled color
            //         } else {
            //           return context.background; // Set enabled color
            //         }
            //       }),
            //     ),
            //     segments: const <ButtonSegment<OrderStatus>>[
            //       ButtonSegment<OrderStatus>(
            //         enabled: false,
            //         value: OrderStatus.Pending,
            //         label: Text(
            //           'PENDING',
            //           //style: context.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            //         ),
            //       ),
            //       ButtonSegment<OrderStatus>(
            //         enabled: true,
            //         value: OrderStatus.Completed,
            //         label: Text(
            //           'COMPLETED',
            //           //style: context.bodyMedium?.copyWith(fontWeight: FontWeight.bold)
            //         ),
            //       ),
            //     ],
            //     selected: {OrderStatus.Completed},
            //     onSelectionChanged: (Set<OrderStatus> newSelection) {
            //       print(newSelection.toString() + "sdfddfgfdg");

            //     },
            //   ),
            // ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if (!isPending) {
                          setState(() {
                            isPending = true;
                          });
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: !isPending ? null : context.primary,
                            border: Border.all(color: context.primary),
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(4), bottomLeft: Radius.circular(4))),
                        child: Text(
                          "PENDING",
                          textAlign: TextAlign.center,
                          style: const TextStyle().copyWith(color: !isPending ? context.primary : context.primaryContainer),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if (isPending) {
                          setState(() {
                            isPending = false;
                          });
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            color: isPending ? null : context.primary,
                            border: Border.all(color: context.primary),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(4), bottomRight: Radius.circular(4))),
                        child: Text(
                          "COMPLETED",
                          textAlign: TextAlign.center,
                          style: const TextStyle().copyWith(color: isPending ? context.primary : context.primaryContainer),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            height2,
            Expanded(
                child: ListView(
              children: [
                DeliveryListItem(context,
                    title: 'NOIDA HUB',
                    address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'INDIRAPURAM HUB',
                    address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'INDIRAPURAM HUB',
                    address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'NOIDA HUB',
                    address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'NOIDA HUB',
                    address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'INDIRAPURAM HUB',
                    address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'NOIDA HUB',
                    address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
                DeliveryListItem(context,
                    title: 'INDIRAPURAM HUB',
                    address: 'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                    items: 3,
                    routePath: RoutesName.deliveriesdetail.name),
              ],
            ))
          ],
        ),
      ),
      // bottomNavigationBar: BinsarBottomNavigationbar(),
    );
  }
}
