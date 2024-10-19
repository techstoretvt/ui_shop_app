import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartBottomBar extends StatelessWidget {
  const CartBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      color: Colors.white,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total:",
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "\$250",
            style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
