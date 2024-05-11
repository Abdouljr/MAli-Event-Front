import 'package:flutter/material.dart';

import '../../notification/notifications.dart';

class favEntete extends StatelessWidget {
  const favEntete({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height * .08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Mes Favories",
            style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Color(0xFF003F8F),
                fontSize: 30),
          ),
          IconButton(
            icon: const Icon(Icons.notifications_rounded),
            iconSize: 30,
            color: Color(0xFF003F8F),
            onPressed: () {
              showDialogWidget(context);
            },
          ),
        ],
      ),
    );
  }
}
