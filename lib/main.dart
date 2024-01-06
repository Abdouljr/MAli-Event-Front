import 'package:flutter/material.dart';
import 'Screen/Home_event.dart';
import 'Screen/artistes/details.dart';
import 'Screen/profil/profil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Profil(),
    );
  }
}


