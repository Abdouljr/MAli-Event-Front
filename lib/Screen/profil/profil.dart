import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F2D42),
      body: Padding(
        
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width *
              0.015, // 5% de la largeur de l'écran
        ),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width *
                        1, // 90% de la largeur de l'écran (100% - 5% - 5%)
                    height: 200,
                    decoration: BoxDecoration(
                      color: const Color(0xFF0E3751),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 50,
                        top: 40,
                        right: 16,
                        bottom: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 45),
                          Text(
                            'Sidiki Diabaté',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: <Widget>[
                              Text(
                                'Dmusic ',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Tomikorobougou',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Text(
                                ' 91 22 88 29',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    
                    child: Stack(
                      children: [
                        // Autres widgets ici
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40 + 52),
                            border: Border.all(
                              width: 8,
                              color: const Color(0xFF1B252F),
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/sdiki.jpeg'),
                          ),
                        ),
                        Positioned(
                          top: 28,
                          left: 45,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF0094ED),
                            ),
                            child: const Icon(
                              Icons.edit_square,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    right: 16,
                    top: 16,
                    child: Text(
                      'Modifier',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.blue,
                      ),
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
