import 'package:flutter/material.dart';

class Publications extends StatelessWidget {
  const Publications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F2D42),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Column(
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
                      width: 400,
                      height: 180,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Column(
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
                      width: 400,
                      height: 180,
                    ),
                  ],
                ),

                const SizedBox(
                  height: 60,
                ),
                // Dupliquez le widget Container ici pour le rendre scrollable
              ],
            ),
          ),
        ],
      ),
    );
  }
}
