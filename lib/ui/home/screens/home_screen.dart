import 'package:binsar_farms_shipment_delivery/ui/home/widget/content_widget.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double iconsize = pixel30;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: Goback(context),
          backgroundColor: context.background,
          centerTitle: true,
          title: Image.asset(
            ImageAssets.smallLogo,
            width: pixel40,
            height: pixel40,
          ),
        ),
        body: ContentWidget(index: index),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (inde) {
            if (inde != 4) {
              setState(() {
                index = inde;
              });
            }
          },
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                ImageAssets.homeIcon,
                height: iconsize,
                width: iconsize,
                color: index == 0 ? context.primary : Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                ImageAssets.pickuplist,
                height: iconsize,
                width: iconsize,
                color: index == 1 ? context.primary : Colors.grey,
              ),
              label: 'Pickup',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                ImageAssets.deliveries,
                height: iconsize,
                width: iconsize,
                color: index == 2 ? context.primary : Colors.grey,
              ),
              label: 'Delivery',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                ImageAssets.delivaryRoute,
                height: iconsize,
                width: iconsize,
                color: index == 3 ? context.primary : Colors.grey,
              ),
              label: 'Route',
            ),
            BottomNavigationBarItem(icon: Image.asset(ImageAssets.menuIcon, height: iconsize, width: iconsize), label: 'Menu'),
          ],
        ));
  }
}
