import 'package:binsar_farms_shipment_delivery/ui/home/screens/dashboard_screen.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/screens/deliveries_screen.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/screens/pickuplist_screen.dart';
import 'package:binsar_farms_shipment_delivery/ui/home/screens/route_screen.dart';
import 'package:flutter/material.dart';

class ContentWidget extends StatefulWidget {
  final int index;
  const ContentWidget({super.key, required this.index});

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  final Map<int, Widget> pages = {
    0: const DashboardScreen(),
    1: const PickuplistScreen(),
    2: const Deliveries(),
    3: const RouteScreen(),
  };
  @override
  Widget build(BuildContext context) {
    return pages[widget.index]!;
  }
}
