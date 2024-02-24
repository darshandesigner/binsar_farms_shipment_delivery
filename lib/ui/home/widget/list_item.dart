import 'package:binsar_farms_shipment_delivery/utils/constants/size.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/color_extenstion.dart';
import 'package:binsar_farms_shipment_delivery/utils/extensions/text_style_extension.dart';
import 'package:binsar_farms_shipment_delivery/utils/widgets/binsar_text.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Function() onTap;
  final String imageName;
  final String title;
  const ListItem({super.key, required this.onTap, required this.imageName, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(pixel15),
        child: Column(
          children: [
            Image.asset(
              imageName,
              height: pixel70,
              width: pixel70,
            ),
            height6,
            BText(
              title,
              textAlign: TextAlign.center,
              style: context.titleSmall?.copyWith(color: context.primary),
            )
          ],
        ),
      ),
    );
  }
}










// Widget listItem({required String imageName, required String Title, required String routePath, Function()? onTap}) {
//   return InkWell(
//     onTap: onTap,
//     child: Container(
//       padding: const EdgeInsets.all(pixel15),
//       child: Column(
//         children: [
//           Image.asset(
//             imageName,
//             height: pixel70,
//             width: pixel70,
//           ),
//           height6,
//           BText(
//             Title,
//             textAlign: TextAlign.center,
//             style: context.titleSmall?.copyWith(color: context.primary),
//           )
//         ],
//       ),
//     ),
//   );
// }


