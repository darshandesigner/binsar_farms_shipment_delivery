import 'package:binsar_farms_shipment_delivery/core/routes/routes_name.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/widget/listItem.dart';
import 'package:binsar_farms_shipment_delivery/ui/widget/back.dart';
import 'package:binsar_farms_shipment_delivery/ui/widget/signin_logout_button.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/theme/colors.dart';
import 'package:flutter/material.dart';

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
       title: Column(
         children: [
           Image.asset(
             ImageAssets.smallLogo,
             width: 40,
             height: 40,
           ),
           Text(
               'Home',
             style: context.titleLarge?.copyWith(color: context.primary,fontSize: pixel20),
           )
         ],
       ),
     ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 35),
            height: MediaQuery.of(context).size.height-270,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.3),
                itemBuilder: (context, index) {
                  return listItem(context, index: index);
                },
            ),
          ),
          signin_logout_button(context,btnName: 'LOG OUT',routePath: RoutesName.login.path),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: AppColors.lightGrey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(ImageAssets.homeIcon,height: BottomNavigtionbariconSize,width: BottomNavigtionbariconSize),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Image.asset(ImageAssets.productsIcon,height: BottomNavigtionbariconSize,width: BottomNavigtionbariconSize),
              label: 'Products',
          ),
          BottomNavigationBarItem(
              icon: Image.asset(ImageAssets.subscriptionIcon,height: BottomNavigtionbariconSize,width: BottomNavigtionbariconSize),
              label: 'Subscription'
          ),
          BottomNavigationBarItem(
              icon: Image.asset(ImageAssets.vacationIcon,height: BottomNavigtionbariconSize,width: BottomNavigtionbariconSize),
              label: 'Vacations'
          ),
          BottomNavigationBarItem(
              icon: Image.asset(ImageAssets.menuIcon,height: BottomNavigtionbariconSize,width: BottomNavigtionbariconSize),
              label: 'Menu'
          ),
        ],
      )
    );
  }
}
