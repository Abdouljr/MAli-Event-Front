import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front_mali_event/Screen/postes/commentaire.dart';
import 'package:front_mali_event/Screen/postes/post.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mali event',
      debugShowCheckedModeBanner: false,
      home: CommentairePost(),
    );
  }
}
