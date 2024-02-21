import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:flutter/material.dart';

class BinsarFilledButton extends StatelessWidget {
  const BinsarFilledButton({
    super.key,
    this.width,
    this.height,
    required this.name,
    required this.onTap,
    this.backgroundcolor,
    this.textcolor,
    this.borderRadius,
    this.padding,
  });

  final double? width;
  final double? height;
  final String name;
  final Function() onTap;
  final Color? backgroundcolor;
  final Color? textcolor;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(4),
          color: backgroundcolor ?? context.primary,
        ),
        width: width ?? double.infinity,
        height: height,
        padding: padding ?? const EdgeInsets.all(10),
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: context.titleLarge?.copyWith(color: textcolor ?? context.background),
        ),
      ),
    );
  }
}
