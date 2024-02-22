import 'package:binsar_farms_shipment_delivery/utils/constants/assets.dart';
import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:flutter/material.dart';

class BinsarBottomNavigationbar extends StatelessWidget {
  const BinsarBottomNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    double iconsize = pixel30;
    return BottomNavigationBar(
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(ImageAssets.homeIcon, height: iconsize, width: iconsize), label: 'Home',),
        BottomNavigationBarItem(
          icon: Image.asset(ImageAssets.productsIcon, height: iconsize, width: iconsize), label: 'Products',),
        BottomNavigationBarItem(
            icon: Image.asset(ImageAssets.subscriptionIcon, height: iconsize, width: iconsize), label: 'Subscription'),
        BottomNavigationBarItem(
            icon: Image.asset(ImageAssets.vacationIcon, height: iconsize, width: iconsize), label: 'Vacations'),
        BottomNavigationBarItem(
            icon: Image.asset(ImageAssets.menuIcon, height: iconsize, width: iconsize), label: 'Menu'),
      ],
    );
  }
}
