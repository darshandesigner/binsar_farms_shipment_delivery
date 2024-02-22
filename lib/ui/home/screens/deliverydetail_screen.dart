import 'package:binsar_farms_shipment_delivery/ui/widget/back.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/colors.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_bottomnavigationbar.dart';
import 'package:flutter/material.dart';

class DeliveryDetail extends StatefulWidget {
  const DeliveryDetail({super.key});

  @override
  State<DeliveryDetail> createState() => _DeliveryDetailState();
}

class _DeliveryDetailState extends State<DeliveryDetail> {
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
        padding: EdgeInsets.all(pixel10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'DELIVERIES',
              style: context.titleLarge?.copyWith(color: context.primary, fontSize: pixel20),
            ),
            height10,
            Container(
              margin: EdgeInsets.symmetric(horizontal: pixel10,vertical: pixel2),
              height: pixel70,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'INDIRAPURAM HUB',
                          style: context.titleLarge?.copyWith(color: context.primary,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'A-0104, TOWER A,GRAND AJNARA HERITAGE,SECTOR 74, NOIDA',
                          style: context.bodySmall?.copyWith(color: AppColors.textColor,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),),
                    width24,
                    IconButton(
                        iconSize: 25,
                        onPressed: () {

                        },
                        icon: Image.asset(
                          ImageAssets.phoneIcon,
                          height: 40,width: 40,
                          color: context.primary,
                        )
                    )
                  ],
                ),

              ),
            ),
            height32,
            SizedBox(
              width: double.infinity,
              child: Text(
                'Items',
                style: context.bodySmall?.copyWith(fontWeight: FontWeight.bold,color: AppColors.textColor),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: Text(
                'Others',
                style: context.bodySmall?.copyWith(fontWeight: FontWeight.bold,color: AppColors.textColor),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BinsarBottomNavigationbar(),
    );
  }
}
