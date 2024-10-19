import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      height: 70,
      color: Colors.deepPurple,
      items: const <Widget>[
        Icon(
          Icons.home,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          CupertinoIcons.cart,
          size: 30,
          color: Colors.white,
        ),
        Icon(
          Icons.list,
          size: 30,
          color: Colors.white,
        ),
      ],
      onTap: (index) {
        //Handle button tap
      },
    );
  }
}
