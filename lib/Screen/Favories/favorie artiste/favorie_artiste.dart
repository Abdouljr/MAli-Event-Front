import 'package:flutter/material.dart';

import '../../../widget/entete_titre_icon.dart';

class ArtisteFav extends StatelessWidget {
  const ArtisteFav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            entete(),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.red, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF0164E5),
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
            SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            ),
          ],
        ),
      ),
    ));
  }
}
