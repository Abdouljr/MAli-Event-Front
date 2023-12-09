import 'package:flutter/material.dart';
import 'package:front_mali_event/Screen/Evenement/details_event.dart';

import 'Screen/Evenement/Home_event.dart';
import 'Screen/Favories/favorie artiste/favorie_artiste.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mali event',
      debugShowCheckedModeBanner: false,
      home: ArtisteFav(),
    );
  }
}
