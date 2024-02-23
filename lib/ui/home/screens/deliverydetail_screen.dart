import 'package:binsar_farms_shipment_delivery/ui/home/widget/deliverydetaillist.dart';
import 'package:binsar_farms_shipment_delivery/ui/widget/back.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/colors.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_bottomnavigationbar.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_button.dart';
import 'package:flutter/material.dart';


class DeliveryDetail extends StatefulWidget {
  const DeliveryDetail({super.key});

  @override
  State<DeliveryDetail> createState() => _DeliveryDetailState();
}

class _DeliveryDetailState extends State<DeliveryDetail> {
  int emptyBottle = 0;
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
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'DELIVERIES',
                      style: context.titleLarge?.copyWith(color: context.primary, fontSize: pixel20),
                    ),
                    height10,
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: pixel20,vertical: pixel2),
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
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: pixel12),
                      width: double.infinity,
                      child: Text(
                        'Items',
                        style: context.bodySmall?.copyWith(fontWeight: FontWeight.bold,color: AppColors.textColor),
                      ),
                    ),
                    Container(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return deliveryDetailListItem(context, title: 'FRESH FRAM MILK', imageName: ImageAssets.farmmilkbottle, packing: '1 Litre', quantity: 500);
                          },
                          itemCount: 3
                      ),
                    ),
                    height10,
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: pixel12),
                      width: double.infinity,
                      child: Text(
                        'Others',
                        style: context.bodySmall?.copyWith(fontWeight: FontWeight.bold,color: AppColors.textColor),
                      ),
                    ),
                    height16,
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: pixel12),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'EMPTY BOTTLES',
                              style: context.bodyMedium?.copyWith(color: context.primary,fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(pixel5),
                                  border: Border.all(
                                      color: AppColors.lightTextColor,
                                      width: 0.5
                                  )
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  width8,
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if(emptyBottle>0) {
                                          emptyBottle--;
                                        }
                                      });
                                    },
                                    child: Icon(Icons.remove,color: AppColors.textColor,),
                                  ),
                                  width16,
                                  Text(
                                    '$emptyBottle',
                                    style: context.titleLarge,
                                  ),
                                  width16,
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          emptyBottle++;
                                        });
                                      },
                                      child: Icon(Icons.add,color: AppColors.textColor,)
                                  ),
                                  width8,
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                  ],
                )
            ),
            Container(
              padding: EdgeInsets.all(pixel15),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {

                      },
                      child: Container(
                        padding: EdgeInsets.all(pixel7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(pixel4),
                            border: Border.all(
                              color: AppColors.statusOrange,
                            )
                        ),
                        child: Center(
                          child: Text(
                            'CANCEL',
                            style: context.titleLarge?.copyWith(fontSize: 14,color: AppColors.statusOrange),
                          ),
                        ),
                      ),
                    )
                  ),
                  width10,
                  Expanded(
                    child: BinsarFilledButton(
                      padding: EdgeInsets.all(pixel7),
                        name: 'CONFIRM & DELIVER',
                        onTap: () {

                        },
                      backgroundcolor: AppColors.statusGreen,
                    ),
                  )
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
