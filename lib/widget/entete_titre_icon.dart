import 'package:flutter/material.dart';

class entete extends StatelessWidget {
  const entete({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height * .08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Accueil",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          IconButton(
            icon: const Icon(Icons.search_sharp),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {
              // MaterialPageRoute(builder: (context))
            },
          ),
        ],
      ),
    );
  }
}
