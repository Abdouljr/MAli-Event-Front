import 'package:flutter/material.dart';
import 'package:front_mali_event/widget/fav%20titre.dart';

class FavPublication extends StatelessWidget {
  const FavPublication({super.key});

  @override
  Widget build(BuildContext context) {
    Color bleu = Color(0xFF0164E5);
    Color gris = Color(0xFFA0A9B0);
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
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: gris, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
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
                      borderRadius: BorderRadius.circular(10), color: gris),
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
                  image: DecorationImage(
                      image: AssetImage("assets/images/sdiki.jpeg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Concert",
                style: TextStyle(
                    color: bleu, fontSize: 24, fontWeight: FontWeight.w800)),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Text("Sidiki Diabaté",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700)),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.check_box_outlined, size: 40),
              ],
            ),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Container(
                  child: Row(children: [
                    Icon(Icons.place, color: gris, size: 18),
                    Text(
                      "Place de cinquantenaire",
                      style: TextStyle(color: gris, fontSize: 12),
                    )
                  ]),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  child: Row(children: [
                    Icon(Icons.calendar_month_sharp, color: gris, size: 18),
                    Text(
                      "31-12-2024",
                      style: TextStyle(color: gris, fontSize: 12),
                    )
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
