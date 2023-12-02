import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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

class widgetEvent extends StatelessWidget {
  const widgetEvent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .18,
          color: const Color(0xFF0196D5),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .4,
                height: MediaQuery.of(context).size.height,
                color: Colors.amber,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Souleymane Kante',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const Text(
                      'Concert',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const Text.rich(
                      TextSpan(
                          text: 'Entree: ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          children: [
                            TextSpan(
                              text: ' 2000 FCFA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            )
                          ]),
                    ),
                    const Text.rich(
                      TextSpan(
                          text: 'Info: ',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          children: [
                            TextSpan(
                              text: '67 18 62 21',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            )
                          ]),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.calendar_month_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '30-12-2023',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.timer_sharp,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '20h',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.place,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Place de la cinquantenaire',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
