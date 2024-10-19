import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  List<Color> ListColors = <Color>[
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          // app bar
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              children: [
                InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back,
                        size: 30, color: Colors.deepPurple)),
                const SizedBox(width: 10),
                const Text(
                  "Product",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Icon(Icons.favorite, color: Colors.red, size: 30)
              ],
            ),
          ),
          Container(
            height: 320,
            decoration: const BoxDecoration(color: Colors.red),
            child: Stack(
              fit: StackFit.loose,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.network(
                      "https://th.bing.com/th/id/R.d75a106d372379609dc697f56bf93cf5?rik=30JqqINK3RDVMA&pid=ImgRaw&r=0",
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(1, 1),
                  child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Arc(
                          height: 40,
                          // clipShadows: [ClipShadow(color: Colors.black)],
                          arcType: ArcType.CONVEY,
                          edge: Edge.TOP,
                          child: Container(
                              height: 60,
                              decoration:
                                  const BoxDecoration(color: Colors.white)))),
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Product Title",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RatingBarIndicator(
                        rating: 2.45,
                        itemBuilder: (context, index) => const Icon(
                          Icons.favorite,
                          color: Colors.deepPurple,
                        ),
                        itemCount: 5,
                        itemSize: 25,
                        direction: Axis.horizontal,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                        spreadRadius: 1)
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: const Icon(
                                CupertinoIcons.minus,
                                size: 20,
                                color: Colors.deepPurple,
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: const Text(
                                "01",
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                        spreadRadius: 1)
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              child: const Icon(
                                CupertinoIcons.add,
                                size: 20,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "This is more detailed desciption of the product you can write here more about the product. this is lengthy descript",
                  style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                  textAlign: TextAlign.justify,
                ),
                Row(
                  children: [
                    const Text(
                      "Size:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple),
                    ),
                    const SizedBox(width: 10),
                    Row(
                      children: [
                        for (int i = 5; i < 9; i++)
                          Container(
                            width: 40,
                            height: 40,
                            margin: const EdgeInsets.only(right: 6),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      spreadRadius: 3,
                                      blurRadius: 8)
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            child: Center(
                                child: Text(
                              "$i",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple,
                                  fontSize: 18),
                            )),
                          )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      "Color:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple),
                    ),
                    const SizedBox(width: 10),
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          Container(
                            width: 40,
                            height: 40,
                            margin: const EdgeInsets.only(right: 6),
                            decoration: BoxDecoration(
                                color: ListColors[i],
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      spreadRadius: 3,
                                      blurRadius: 8)
                                ],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(50))),
                          )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "\$120",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.cart_badge_plus,
                      color: Colors.white, size: 30),
                  SizedBox(width: 10),
                  Text(
                    "Add To Cart",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
