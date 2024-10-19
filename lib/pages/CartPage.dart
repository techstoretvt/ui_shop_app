import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_shop_app/widgets/CartAppBar.dart';
import 'package:ui_shop_app/widgets/CartBottomBar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            const CartAppBar(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color.fromRGBO(103, 58, 183, 0.1)),
              child: Column(
                children: [
                  // List product
                  for (int i = 0; i < 5; i++)
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.white),
                              child: Row(
                                children: [
                                  Radio(
                                      value: "",
                                      groupValue: "radio_product",
                                      activeColor: Colors.deepPurple,
                                      onChanged: (index) {}),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: FittedBox(
                                      child: Image.network(
                                          "https://th.bing.com/th/id/R.d75a106d372379609dc697f56bf93cf5?rik=30JqqINK3RDVMA&pid=ImgRaw&r=0"),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "Product Title",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.deepPurple),
                                        ),
                                        Text(
                                          "\$59",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.deepPurple),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Spacer(),

                                  // Options
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                          size: 20,
                                        ),
                                        const SizedBox(height: 10),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(0),
                                                decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30)),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.15),
                                                      spreadRadius: 1,
                                                      blurRadius: 5,
                                                    ),
                                                  ],
                                                ),
                                                child: Icon(Icons.add),
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 6),
                                              child: Text(
                                                "01",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.deepPurple,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Container(
                                                padding: EdgeInsets.all(0),
                                                decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30)),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.15),
                                                      spreadRadius: 1,
                                                      blurRadius: 5,
                                                    ),
                                                  ],
                                                ),
                                                child: const Icon(
                                                    CupertinoIcons.minus),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),

                  // Add Coupon Code
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle,
                          size: 30,
                          color: Colors.deepPurple,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Add Coupon Code",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const CartBottomBar(),
      ),
    );
  }
}
