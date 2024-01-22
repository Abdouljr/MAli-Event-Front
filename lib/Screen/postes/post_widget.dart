import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:front_mali_event/Screen/postes/commentaire.dart';

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
    {
      "pseudo": "Neymar jr",
      "profil": "assets/images/profil/neymar_profil.jpg",
      "post": "assets/images/post/neymar.jpg",
      "description":
          "🤣 je ne sais pas trop quoi 🤷‍♀️ donc voilà des joueurs avec toutes les qualités qu'il faut :s"
    },
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
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
          children: postItems.map((e) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             const Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage('assets/images/sdiki.jpeg'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Sidiki Diabaté',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '27 Novembre 2023',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Album en cours preparez-vous les fans',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sdiki.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
              height: size.height * .3,
            ),
            Container(
              padding: const EdgeInsets.only(left: 5, bottom: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 40,
                          child: IconButton(
                              icon: const Icon(
                                Icons.thumb_up,
                                color: Colors.blue,
                                size: 24,
                              ),
                              onPressed: () {
                                debugPrint("Bouton like");
                              })),
                      SizedBox(
                          width: 40,
                          child: IconButton(
                              icon: const FaIcon(FontAwesomeIcons.comment,
                                  size: 22),
                              // onPressed: () {
                              //   debugPrint("Bouton commenter");
                              // }
                                 onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const CommentairePost()));
                      },
                              )),
                      SizedBox(
                          width: 40,
                          child: IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.paperPlane,
                                size: 22,
                              ),
                              onPressed: () {
                                debugPrint("Bouton partager");
                              })),
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 5),
                      margin: const EdgeInsets.only(bottom: 5),
                      alignment: Alignment.centerLeft,
                      child: const Text("150 j'aimes")),
                  Container(
                      padding: const EdgeInsets.only(left: 5),
                      alignment: Alignment.centerLeft,
                      child: const Text("23 Commentaires")),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        );
      }).toList()),
    );
  }
}
