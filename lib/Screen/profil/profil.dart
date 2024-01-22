import 'package:flutter/material.dart';
import 'package:front_mali_event/Screen/artistes/apropos.dart';
import 'package:front_mali_event/Screen/artistes/publication.dart';
import 'package:front_mali_event/Screen/postes/post_widget.dart';
import 'package:front_mali_event/Screen/profil/parametre.dart';



class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F2D42),
      body: SingleChildScrollView(
        child: Column(
          children: [
           const SizedBox(height: 60),
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: 200,
                  decoration: BoxDecoration(
                    color:const Color(0xFF0E3751),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 50,
                      top: 40,
                      right: 16,
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
                       SizedBox(height: 16),
                        Row(
                          children: <Widget>[
                            Text(
                              'Dmusic',
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
                              ' 91 22 88 20',
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
                        top: 30,
                        left: 49,
                        child:  Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF0094ED),
                          ),
                          child: const Icon(
                            Icons.edit_square,
                            color: Colors.white,
                            size: 22,
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
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: 'Publications'),
                Tab(text: 'Paramètre du compte'),
              ],
              labelColor: Colors.blue,
              unselectedLabelColor: Color.fromARGB(255, 255, 255, 255),
              indicatorColor: Colors.blue,
              indicatorWeight: 2,
            ),
            DefaultTabController(
              length: 2,
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 60 - 200 - kToolbarHeight,
                child: TabBarView(
                  controller: _tabController,
                  children:  [
                    Postwidget(),
                    const Parametre(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
