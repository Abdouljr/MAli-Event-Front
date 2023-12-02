import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widget/postEvent.dart';

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
            Container(
              margin: const EdgeInsets.only(top: 20),
              height: MediaQuery.of(context).size.height * .08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Accueil",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search_sharp),
                    iconSize: 30,
                    color: Colors.white,
                    onPressed: () {
                      // MaterialPageRoute(builder: (context))
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            widgetEvent(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
