import 'package:flutter/material.dart';
import 'package:front_mali_event/Screen/posts/stories_widget.dart';

class DetailsEvent extends StatefulWidget {
  const DetailsEvent({super.key});

  @override
  State<DetailsEvent> createState() => _DetailsEventState();
}

class _DetailsEventState extends State<DetailsEvent> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Color texte = const Color(0xFF0167E4);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Accueil.png"), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/sdiki.jpeg"),
                    fit: BoxFit.cover),
              ),
              height: size.height * .28,
              padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(195, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(195, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.favorite_border_outlined),
                    ),
                  ]),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color(0xFF0164E5),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Concert',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: size.height * .02,
                    ),

                    //=======================================================
                    //========== Container contenant le nom et le date ==========
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: size.width * .65,
                          child: const Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kanté',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.place,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                    height: 10,
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
                        ),
                        const Expanded(
                            child: Column(
                          children: [
                            Row(
                              children: [
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
                              ],
                            ),
                            Row(
                              children: [
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
                            )
                          ],
                        ))
                      ],
                    ),

                    SizedBox(
                      height: size.height * .02,
                    ),

                    //=======================================================
                    //========== Container contenant les acces ==========
                    const Text(
                      "Accès",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.white),
                    ),
                    SizedBox(
                      height: size.height * .01,
                    ),
                    Row(children: [
                      Text("Ticket: ", style: TextStyle(color: texte)),
                      Text("2000 F ", style: TextStyle(color: Colors.white)),
                      SizedBox(
                        width: size.width * .02,
                      ),
                      Container(
                        width: 10,
                        child: Divider(
                          color: texte,
                          thickness: 15,
                          endIndent: 7,
                        ),
                      ),
                      Text("Carte: ", style: TextStyle(color: texte)),
                      Text("5000 F ", style: TextStyle(color: Colors.white)),
                      SizedBox(
                        width: size.width * .02,
                      ),
                      Container(
                        width: 10,
                        child: Divider(
                          color: texte,
                          thickness: 15,
                          endIndent: 7,
                        ),
                      ),
                      Text("VIP: ", style: TextStyle(color: texte)),
                      Text("10000 F ", style: TextStyle(color: Colors.white)),
                    ]),
                    SizedBox(
                      height: size.height * .02,
                    ),

                    //===========================================================
                    //========== Container contenant les parrainages ============
                    const Text(
                      "Parrainage",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.white),
                    ),
                    SizedBox(
                      height: size.height * .01,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Parrain: ", style: TextStyle(color: texte)),
                          const Text("Barouni Gambi ",
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            width: size.height * .018,
                          ),
                          Text("Marraine: ", style: TextStyle(color: texte)),
                          const Text("Moussou Sora ",
                              style: TextStyle(color: Colors.white)),
                        ]),
                    SizedBox(
                      height: size.height * .02,
                    ),

                    //=======================================================
                    //========== Container contenant la description ===========
                    const Text(
                        "Moussou Sorahdzkzeggggggggghhhhhhhhhhhh dddddddddddddgddgd fffd ",
                        style: TextStyle(color: Colors.white)),

                    SizedBox(
                      height: size.height * .02,
                    ),

                    //==============================================================
                    //========== Container contenant les artistes invites ===========
                    const Text(
                      "Artistes Invités",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.white),
                    ),
                    SizedBox(
                      height: size.height * .01,
                    ),
                    Row(
                      children: [
                        Text("Moussou Sora ", style: TextStyle(color: texte)),
                        SizedBox(
                          width: size.width * .02,
                        ),
                        Container(
                          width: 10,
                          child: Divider(
                            color: texte,
                            thickness: 5,
                            endIndent: 1,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Moussou Sora ", style: TextStyle(color: texte)),
                        SizedBox(
                          height: size.height * .02,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * .02,
                    ),

                    //=======================================================
                    //========== Container contenant les Sponsors ===========
                    const Text(
                      "Sponsors",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, color: Colors.white),
                    ),
                    SizedBox(
                      height: size.height * .01,
                    ),

                    Storieswidget()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
