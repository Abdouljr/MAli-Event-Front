import 'package:flutter/material.dart';
import 'package:front_mali_event/Screen/artistes/publication.dart';
// import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
// import 'package:front_mali_event/Screen/artistes/publication.dart';
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

import 'apropos.dart';

class DetailsArtiste extends StatelessWidget {
  const DetailsArtiste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color(0xFF0F2D42),
          body: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
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
                        icon: Icon(Icons.arrow_back, color: Colors.white),
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
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 16),
                    Row(
                      children: <Widget>[
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
                    SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        Text(
                          'Artiste chanteur ',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Tomikorobougou',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: <Widget>[
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
                    SizedBox(height: 16),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Center(
                              child: Text("j'aime déjà"),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    TabBar(
                      tabs: [
                        Tab(text: 'Publications'),
                        Tab(text: 'À propos'),
                      ],
                    ),
                    Expanded(
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
          // bottomNavigationBar: CurvedNavigationBar(
          //   items: [
          //     CurvedNavigationBarItem(
          //       child: Icon(Icons.home_outlined),
          //     ),
          //     CurvedNavigationBarItem(
          //       child: Icon(Icons.search),
          //     ),
          //     CurvedNavigationBarItem(
          //       child: Icon(Icons.chat_bubble_outline),
          //     ),
          //     CurvedNavigationBarItem(
          //       child: Icon(Icons.newspaper),
          //     ),
          //     CurvedNavigationBarItem(
          //       child: Icon(Icons.perm_identity),
          //     ),
          //   ],
          // )
                // bottomNavigationBar: NavigationBar(),

          ),
    );
  }

   Widget NavigationBar() {
    return Container(
      color: const Color(0xFF0F2D42),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color(0x1B2229).withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xFF1B2229),
            selectedItemColor: const Color(0xFF0094ED),
            selectedFontSize: 12,
            unselectedFontSize: 12,
            unselectedItemColor: Colors.grey.withOpacity(0.7),
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.home_rounded,
                  size: 30,
                ),
              ),
              BottomNavigationBarItem(
                label: "Application",
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    // color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.more_horiz_outlined,
                    size: 30,
                    color: const Color(0xFF68798B),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                label: "Film",
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    // color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    size: 30,
                    color: const Color(0xFF68798B),
                  ),
                ),
                
              ),
              BottomNavigationBarItem(
                label: "Book",
                icon: Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    // color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.auto_stories_rounded,
                    size: 30,
                    color: const Color(0xFF68798B),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
