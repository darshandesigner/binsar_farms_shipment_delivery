import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension GoNamedAndRemoveUntil on GoRouter {
  void goNamedAndRemoveUntil(
    BuildContext context,
    String routeName, {
    Map<String, String>? pathParams,
    Map<String, dynamic>? queryParams,
    Object? extra,
  }) {
    while (context.canPop()) {
      context.pop();
    }
    goNamed(
      routeName,
      pathParameters: pathParams ?? {},
      queryParameters: queryParams ?? {},
      extra: extra,
    );
  }
}
