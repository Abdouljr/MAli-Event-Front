import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:front_mali_event/config.dart';

class CommentairePost extends StatefulWidget {
  const CommentairePost({Key? key}) : super(key: key);

  @override
  State<CommentairePost> createState() => _CommentairePostState();
}

class _CommentairePostState extends State<CommentairePost> {
  TextEditingController cController = TextEditingController();
  bool isCommentScrollable = false;

  List<Map<String, dynamic>> list_icons = [
    {"icon": FontAwesomeIcons.solidHeart, "nombre": 28},
    {"icon": FontAwesomeIcons.solidComment, "nombre": 12},
    {"icon": FontAwesomeIcons.share, "nombre": 5},
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.05),
                    child: Column(
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
                                    backgroundImage:
                                        AssetImage('assets/images/sdiki.jpeg'),
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
                                    'Sidiki Diabatés',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    '27 Novembre 2023',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black,
                                    ),
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
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),

                        // ======================== IMAGE ===========================
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

                        // ======================= ICONS ===========================
                        Container(
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * .03, vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: list_icons
                                .map(
                                  (icon) => Container(
                                    height: 35,
                                    width: size.width * .25,
                                    decoration: BoxDecoration(
                                      color:
                                          Config.couleur.grise.withOpacity(.2),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          icon["nombre"].toString(),
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * .02,
                                        ),
                                        FaIcon(
                                          icon["icon"],
                                          color: Colors.grey,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 5, bottom: 10),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(children: [
                              Commentaire(
                                size: size,
                                commentaire: 'je ne sais pas ce que je veux',
                              ),
                              Commentaire(
                                size: size,
                                commentaire: 'Bonjour Sidiki Diabaté',
                              ),
                              Commentaire(
                                size: size,
                                commentaire: 'Bonjour Sidiki Diabaté',
                              ),
                              Commentaire(
                                size: size,
                                commentaire: 'Bonjour Sidiki Diabaté',
                              ),
                              Commentaire(
                                size: size,
                                commentaire: 'Bonjour Sidiki Diabaté',
                              ),
                              Commentaire(
                                size: size,
                                commentaire: 'Bonjour Sidiki Diabaté',
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ==================================== Champ Commentaire ============
          Container(
            height: size.height * .08,
            padding: const EdgeInsets.only(left: 5),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 1,
                  spreadRadius: .1,
                ),
              ],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: cController,
                      keyboardType: TextInputType.multiline,
                      maxLines:
                          null, // Permet une croissance dynamique du champ de saisie
                      minLines: 1, // Nombre minimum de lignes visibles
                      onChanged: (value) {
                        setState(() {
                          isCommentScrollable =
                              cController.text.split('\n').length > 3;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Votre commentaire...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 40,
                    child: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Config.couleur.bleu,
                        size: 28,
                      ),
                      onPressed: () {
                        // Ajoutez ici le code pour envoyer le commentaire
                        print('Commentaire envoyé: ${cController.text}');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Commentaire extends StatelessWidget {
  const Commentaire({
    Key? key,
    required this.size,
    required this.commentaire,
  }) : super(key: key);

  final Size size;
  final String commentaire;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: <Widget>[
          const CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/sdiki.jpeg'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Sidiki Diabaté',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: size.width * .75,
                    ),
                    child: Text(
                      commentaire,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
