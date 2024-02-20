import 'package:binsar_farms_shipment_delivery/utils/extensions/navigation_extenstion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension GoRouterBuildContextExtensions on BuildContext {
  void pushNamedAndRemoveUntil(
    String routeName, {
    Map<String, String>? pathParams,
    Map<String, dynamic>? queryParams,
    Object? extra,
  }) {
    GoRouter.of(this).goNamedAndRemoveUntil(
      this,
      routeName,
      pathParams: pathParams,
      queryParams: queryParams,
      extra: extra,
    );
  }
}
