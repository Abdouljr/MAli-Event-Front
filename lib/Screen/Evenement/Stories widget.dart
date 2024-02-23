import 'package:flutter/material.dart';

class StoriesPub extends StatelessWidget {
  StoriesPub({super.key});
  final List storyItem = [
    {
      "photo": "assets/images/post/messi.jpg",
    },
    {
      "photo": "assets/images/post/gavi.jpg",
    },
    {
      "photo": "assets/images/post/pedri.jpg",
    },
    {
      "photo": "assets/images/post/gavi.jpg",
    },
    {
      "photo": "assets/images/post/pedri.jpg",
    },
    {
      "photo": "assets/images/post/neymar.jpg",
    },
    {
      "photo": "assets/images/post/neymar.jpg",
    },
    {
      "photo": "assets/images/post/haland.jpg",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: storyItem.map((story) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(children: [
            Container(
                width: 100,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        story["photo"],
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                )),
            const SizedBox(
              height: 8,
            ),
          ]),
        );
      }).toList()),
    );
  }
}
