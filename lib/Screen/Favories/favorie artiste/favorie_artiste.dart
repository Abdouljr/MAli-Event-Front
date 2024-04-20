import 'package:flutter/material.dart';
import 'package:front_mali_event/widget/ArtistFavorie_item.dart';
import 'package:front_mali_event/widget/fav%20titre.dart';

class ArtisteFav extends StatelessWidget {
  const ArtisteFav({super.key});

  @override
  Widget build(BuildContext context) {
    Color bleu = Color(0xFF0164E5);
    Color gris = Color(0xFFA0A9B0);
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            favEntete(),
            SizedBox(height: 20),
            Container(
                //padding: EdgeInsets.only(top: 5),
                width: double.infinity,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xFFA0A9B0), style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search_rounded),
                    hintText: 'chercher artiste...',
                  ),
                )),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF0164E5).withOpacity(0.4),
                  ),
                  child: Text("Publication",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF0164E5)),
                  child: Text("Artiste",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            FavArtisteItem(bleu: bleu, gris: gris),
            const SizedBox(
              height: 40,
            ),
            FavArtisteItem(bleu: bleu, gris: gris)
          ],
        ),
      ),
    ));
  }
}
