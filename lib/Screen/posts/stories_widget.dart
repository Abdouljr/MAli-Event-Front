import 'package:flutter/material.dart';

class Storieswidget extends StatelessWidget {
  Storieswidget({super.key});
  final List storyItem = [
    {
      "nom": "Messi",
      "photo": "assets/images/post/messi.jpg",
    },
    {
      "nom": "Gavi",
      "photo": "assets/images/post/gavi.jpg",
    },
    {
      "nom": "Pedri",
      "photo": "assets/images/post/pedri.jpg",
    },
    {
      "nom": "Gavi",
      "photo": "assets/images/post/gavi.jpg",
    },
    {
      "nom": "Pedri",
      "photo": "assets/images/post/pedri.jpg",
    },
    {
      "nom": "Neymar",
      "photo": "assets/images/post/neymar.jpg",
    },
    {
      "nom": "Neymar",
      "photo": "assets/images/post/neymar.jpg",
    },
    {
      "nom": "Haland",
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
            // Stack(
            //   alignment: Alignment.center,
            //   children: [
            //     Image.asset(
            //       'assets/images/Instagram_Stories.png',
            //       height: 85,
            //     ),
            //     CircleAvatar(
            //       backgroundColor: Colors.white,
            //       radius: 35,
            //       backgroundImage: AssetImage(story["photo"]),
            //     ),
            //   ],
            // ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35,
              backgroundImage: AssetImage(story["photo"]),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              story["nom"],
              maxLines: 1,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            )
          ]),
        );
      }).toList()),
    );
  }
}
