import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < 10; i++)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: const EdgeInsets.only(right: 15),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: Row(
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(color: Colors.deepPurple),
                      child: FittedBox(
                        child: Image.network(
                            "https://th.bing.com/th/id/R.d75a106d372379609dc697f56bf93cf5?rik=30JqqINK3RDVMA&pid=ImgRaw&r=0"),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Sandal",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}
