import 'package:flutter/material.dart';

showDialogWidget(BuildContext context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(32),
      )),
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.94,
          child: Column(
            children: [
              Container(
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * .02),
                        height: 8,
                        width: MediaQuery.of(context).size.width * .3,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(30),
                                right: Radius.circular(30))),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text("Notifications",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold))
                    ],
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * .02),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            size: 45,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                            Text("Mamank99",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                "votre rdv est à 14h",
                                style: TextStyle(fontSize: 16),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 5,
                              ),
                            )
                          ]))
                    ]),
              )
            ],
          ),
        );
      });
}
