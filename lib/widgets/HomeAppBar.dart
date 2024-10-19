import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          const Icon(
            Icons.menu,
            color: Colors.deepPurple,
            size: 30,
          ),
          const SizedBox(width: 20),
          const Text("DP Shop",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold)),
          const Spacer(),
          badges.Badge(
            badgeContent:
                const Text("3", style: TextStyle(color: Colors.white)),
            position: badges.BadgePosition.topEnd(top: -10, end: -6),
            child: InkWell(
              child: const Icon(
                Icons.shopping_cart,
                color: Colors.deepPurple,
                size: 30,
              ),
              onTap: () {
                Navigator.pushNamed(context, "cart");
              },
            ),
          )
        ],
      ),
    );
  }
}
