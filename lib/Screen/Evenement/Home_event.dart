import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:front_mali_event/Screen/Evenement/Stories%20widget.dart';
import 'package:front_mali_event/widget/entete_titre_icon.dart';

import 'postEvent.dart';

class AccueilEvent extends StatefulWidget {
  const AccueilEvent({super.key});

  @override
  State<AccueilEvent> createState() => _AccueilEventState();
}

class _AccueilEventState extends State<AccueilEvent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color(0xFF0196D5),
        body: Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/Accueil.png"), fit: BoxFit.fill),
      ),
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const entete(),
            const SizedBox(
              height: 10,
            ),
            StoriesPub(),
            const SizedBox(
              height: 10,
            ),
            const widgetEvent(),
            const SizedBox(
              height: 20,
            ),
            widgetEvent(),
            const SizedBox(
              height: 20,
            ),
            widgetEvent(),
            const SizedBox(
              height: 20,
            ),
            widgetEvent(),
          ],
        ),
      ),
    ));
  }
}
