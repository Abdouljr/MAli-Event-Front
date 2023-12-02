import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Apropos extends StatelessWidget {
  const Apropos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F2D42),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: 10.0,
                      top: 5.0,
                      bottom: 5.0), // Ajoutez la marge ici
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.play_circle_outline_sharp,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      Text("   @sidikidiabateoff",
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400)
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.email_outlined,
                      color: Colors.white,
                      ),
                      Text("   @diabate@gmail.com",
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.white, fontWeight: FontWeight.w400)
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.call,
                      color: Colors.white,
                      ),
                      Text(
                        "   91 22 88 29",
                        style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,  fontWeight: FontWeight.w400)
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 5.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                      Text(
                        "   dmuzikoff",
                        style: TextStyle(fontSize: 20, color: Colors.white,  fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
