import 'package:flutter/material.dart';
import 'package:ui_shop_app/widgets/ItemBox.dart';

class BestSelling extends StatelessWidget {
  const BestSelling({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [for (int i = 0; i < 10; i++) const ItemBox()],
    );
  }
}
