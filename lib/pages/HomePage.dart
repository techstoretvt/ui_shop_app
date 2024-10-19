import 'package:flutter/material.dart';
import 'package:ui_shop_app/widgets/BestSelling.dart';
import 'package:ui_shop_app/widgets/HomeAppBar.dart';
import 'package:ui_shop_app/widgets/HomeBottomBar.dart';
import 'package:ui_shop_app/widgets/HomeCategories.dart';
import 'package:ui_shop_app/widgets/HomeTitle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          shrinkWrap: true,
          children: [
            const HomeAppBar(),
            Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(103, 58, 183, 0.1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    // search box
                    Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: const Row(children: [
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                              hintText: "Search here...",
                              border: InputBorder.none,
                              focusColor: Colors.yellow),
                        )),
                        Icon(
                          Icons.camera_alt,
                          size: 30,
                          color: Colors.deepPurple,
                        )
                      ]),
                    ),

                    // categories
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 20),
                      child: const HomeTitle(title: "Categories"),
                    ),

                    const SizedBox(height: 10),

                    // categories box
                    const HomeCategories(),

                    // Best Selling
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 20),
                      child: const HomeTitle(title: "Best Selling"),
                    ),

                    // Best Selling box
                    const BestSelling()
                  ],
                ))
          ],
        ),
        bottomNavigationBar: const HomeBottomBar(),
      ),
    );
  }
}
