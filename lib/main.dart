import 'package:flutter/material.dart';

import 'Screen/Home_event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Mali event',
      debugShowCheckedModeBanner: false,
      home: AccueilEvent(),
    );
  }
}


