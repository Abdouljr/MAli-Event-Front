import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:front_mali_event/config.dart';

class CommentairePost extends StatefulWidget {
  const CommentairePost({super.key});

  @override
  State<CommentairePost> createState() => _CommentairePostState();
}

class _CommentairePostState extends State<CommentairePost> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/post.png"),
                  fit: BoxFit.fill),
            ),
            child: SingleChildScrollView(
                child: Padding(
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
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
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
                    height: 20,
                    color: Colors.amber,
                  ),
                  Container(
                      padding: const EdgeInsets.only(left: 5, bottom: 10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Container(
                          height: size.height * .50,
                          color: Colors.white,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: SingleChildScrollView(
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
                                  commentaire:
                                      'Tu es mon artiste préféré de tous les artistes du mali',
                                ),
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
                                  commentaire:
                                      'Tu es mon artiste préféré de tous les artistes du mali',
                                ),
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
                                  commentaire:
                                      'Tu es mon artiste préféré de tous les artistes du mali',
                                ),
                                SizedBox(
                                  height: 100,
                                )
                              ]),
                            ),
                          ))),
                ],
              ),
            ))));
  }
}

class Commentaire extends StatelessWidget {
  const Commentaire({
    super.key,
    required this.size,
    required this.commentaire,
  });

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
                  color: Config.couleur.grise.withOpacity(.3)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Sidiki Diabaté',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
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
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
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
