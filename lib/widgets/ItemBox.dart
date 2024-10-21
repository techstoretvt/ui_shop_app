import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:ui_shop_app/pages/ProductPage.dart';

class ItemBox extends StatelessWidget {
  const ItemBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.deepPurple),
                child: const Text(
                  "-50%",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            const Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.red,
            )
          ]),
          OpenContainer(
            transitionType: ContainerTransitionType.fade,
            transitionDuration: const Duration(milliseconds: 500),
            openBuilder: (BuildContext mContext, VoidCallback _) {
              return ProductPage();
            },
            closedBuilder: (BuildContext mContext, VoidCallback openContainer) {
              return SizedBox(
                height: 130,
                child: InkWell(
                  child: Image.network(
                      "https://th.bing.com/th/id/R.d75a106d372379609dc697f56bf93cf5?rik=30JqqINK3RDVMA&pid=ImgRaw&r=0"),
                  onTap: () => openContainer(),
                ),
              );
            },
            onClosed: null,
          ),

          // Container(
          //   height: 130,
          //   child: InkWell(
          //     child: Image.network(
          //         "https://th.bing.com/th/id/R.d75a106d372379609dc697f56bf93cf5?rik=30JqqINK3RDVMA&pid=ImgRaw&r=0"),
          //     onTap: () => Navigator.pushNamed(context, "product"),
          //   ),
          // ),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                "Product Title",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              )),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$55",
                style: TextStyle(fontSize: 16, color: Colors.deepPurple),
              ),
              Icon(
                Icons.shopping_cart,
                size: 20,
                color: Colors.deepPurple,
              ),
            ],
          )
        ],
      ),
    );
  }
}
