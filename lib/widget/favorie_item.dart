import 'package:flutter/material.dart';

class favorie_item extends StatelessWidget {
  const favorie_item({
    super.key,
    required this.bleu,
    required this.gris,
  });

  final Color bleu;
  final Color gris;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topRight,
          padding: EdgeInsets.only(right: 30, top: 20),
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/sdiki.jpeg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              size: 30,
              color: Colors.red,
            ),
          ),
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
            Image(
              image: AssetImage("assets/images/badge.png"),
              height: 40,
            ),
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
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Place de cinquantenaire",
                  style: TextStyle(color: gris, fontSize: 12),
                )
              ]),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .2,
            ),
            Container(
              child: Row(children: [
                Icon(Icons.calendar_month_sharp, color: gris, size: 18),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "31-12-2024",
                  style: TextStyle(color: gris, fontSize: 12),
                )
              ]),
            )
          ],
        )
      ],
    );
  }
}
