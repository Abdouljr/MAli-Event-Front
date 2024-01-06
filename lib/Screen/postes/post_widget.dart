import 'package:flutter/material.dart';

class Postwidget extends StatelessWidget {
  Postwidget({super.key});
  final List postItems = [
    // {
    //   "pseudo": "Messi",
    //   "profil": "assets/images/profil/messi_profil.jpg",
    //   "post": "assets/images/post/messi.jpg",
    //   "description":
    //       "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    // },
    // {
    //   "pseudo": "Cristiano",
    //   "profil": "assets/images/profil/cris_profil.jpg",
    //   "post": "assets/images/post/cr7.jpg",
    //   "description":
    //       "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    // },
    // {
    //   "pseudo": "Gavi",
    //   "profil": "assets/images/profil/gavi_profil.jpg",
    //   "post": "assets/images/post/gavi.jpg",
    //   "description":
    //       "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    // },
    // {
    //   "pseudo": "Pedri",
    //   "profil": "assets/images/profil/pedri_profil.jpg",
    //   "post": "assets/images/post/pedri.jpg",
    //   "description":
    //       "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    // },
    // {
    //   "pseudo": "Gavi",
    //   "profil": "assets/images/profil/gavi_profil.jpg",
    //   "post": "assets/images/post/gavi.jpg",
    //   "description":
    //       "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    // },
    // {
    //   "pseudo": "Pedri",
    //   "profil": "assets/images/profil/pedri_profil.jpg",
    //   "post": "assets/images/post/pedri.jpg",
    //   "description":
    //       "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    // },
    // {
    //   "pseudo": "Neymar jr",
    //   "profil": "assets/images/profil/neymar_profil.jpg",
    //   "post": "assets/images/post/neymar.jpg",
    //   "description":
    //       "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    // },
    // {
    //   "pseudo": "Neymar jr",
    //   "profil": "assets/images/profil/neymar_profil.jpg",
    //   "post": "assets/images/post/neymar.jpg",
    //   "description":
    //       "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    // },
    {
      "pseudo": "Haland",
      "profil": "assets/images/profil/haland_profil.jpg",
      "post": "assets/images/post/haland.jpg",
      "description":
          "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: postItems.map((e) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.only(top: 10),
            height: 50,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(e["profil"]),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  e['pseudo'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Image.asset(
                  'assets/images/badge.png',
                  height: 35,
                ),
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
              ],
            ),
          ),
          Container(
            // margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 300,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(
                  e["post"],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      );
    }).toList());
  }
}
