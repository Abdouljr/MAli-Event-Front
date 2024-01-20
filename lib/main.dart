import 'package:flutter/material.dart';
import 'Screen/Auth & inscription/inscription.dart';
import 'Screen/Evenement/Home_event.dart';
import 'Screen/Favories/favorie artiste/favorie_artiste.dart';
import 'Screen/artistes/apropos.dart';
import 'Screen/artistes/details.dart';
import 'Screen/postes/post.dart';
import 'Screen/profil/profil.dart';

void main() {
  runApp(const MyApp());
  //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mali event',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _indexSelectionne = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: BarreDeNavigation(
        onItemTapped: (index) {
          setState(() {
            _indexSelectionne = index;
          });
        },
        currentIndex: _indexSelectionne,
      ),
    );
  }

  Widget getBody() {
    switch (_indexSelectionne) {
      case 0:
        return const AccueilEvent();
      case 1:
        return const PostPage();
      case 2:
        return const ArtisteFav();
      default:
        return const Profil();
    }
  }
}

class BarreDeNavigation extends StatefulWidget {
  final Function(int) onItemTapped;
  final int currentIndex;

  const BarreDeNavigation({Key? key, required this.onItemTapped, required this.currentIndex}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BarreDeNavigationState createState() => _BarreDeNavigationState();
}

class _BarreDeNavigationState extends State<BarreDeNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0F2D42),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0x001b2229).withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
            ),
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
            currentIndex: widget.currentIndex,
            onTap: widget.onItemTapped,
            items: [
              _construireElementBarreDeNavigation("Accueil", Icons.home_rounded, 0),
              _construireElementBarreDeNavigation("Posts", Icons.article, 1),
              _construireElementBarreDeNavigation("Favoris", Icons.favorite, 2),
              _construireElementBarreDeNavigation("Profil", Icons.person, 3),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _construireElementBarreDeNavigation(String libelle, IconData icone, int index) {
    return BottomNavigationBarItem(
      label: '',
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icone,
            size: 30,
            color: widget.currentIndex == index ? const Color(0xFF0094ED) : const Color(0xFF68798B),
          ),
          const SizedBox(height: 4),
          Text(
            libelle,
            style: TextStyle(
              color: widget.currentIndex == index ? const Color(0xFF0094ED) : const Color(0xFF68798B),
            ),
          ),
          const SizedBox(height: 4),
          if (widget.currentIndex == index)
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: const Color(0xFF0094ED),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
        ],
      ),
    );
  }
}
