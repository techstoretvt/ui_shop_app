import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.white,
      child: Row(
        children: [
          InkWell(
            child: const Icon(
              Icons.arrow_back_sharp,
              size: 30,
              color: Colors.deepPurple,
            ),
            onTap: () => Navigator.pop(context),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Cart",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Spacer(),
          const Icon(Icons.more_vert)
        ],
      ),
    );
  }
}
