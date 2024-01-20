import 'package:flutter/material.dart';
import 'package:front_mali_event/Screen/artistes/publication.dart';

import 'apropos.dart';

class DetailsArtiste extends StatelessWidget {
  const DetailsArtiste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xFF0F2D42),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/sdiki.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        // Ajoutez votre logique de retour ici
                      },
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 600,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 16),
                  Row(
                    children: const <Widget>[
                      Text(
                        'Sidiki Diabate',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: const <Widget>[
                      Text(
                        'Artiste chanteur ',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Tomikorobougou',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: const <Widget>[
                      Text(
                        '3,14 M ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        ' followers',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Center(
                            child: Text("j'aime déjà"),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const TabBar(
                    tabs: [
                      Tab(text: 'Publications'),
                      Tab(text: 'À propos'),
                    ],
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        Publications(),
                        Apropos(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
