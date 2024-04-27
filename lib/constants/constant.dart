import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

const bleu = Color(0xFF0094ED);
const blanc = Colors.white;
const grise = Color(0xFF68798B);
final background = const Color(0xFF0196D5).withOpacity(.5);

enum Actions {
  like,
  favori,
}

enum RoleEnum {
  admin,
  artiste,
}

String getType(Actions action) {
  switch (action) {
    case Actions.like:
      return Actions.like.name;
    case Actions.favori:
      return Actions.like.name;
    default:
      return 'invalide';
  }
}

DocumentReference getRole(RoleEnum role) {
  switch (role) {
    case RoleEnum.admin:
      return FirebaseFirestore.instance
          .collection("roles")
          .doc("wYQn3qWV9sx0UAiYGlU4");
    case RoleEnum.artiste:
      return FirebaseFirestore.instance
          .collection("roles")
          .doc("fEZ4LPZiVR4tfO2kcICz");
  }
}
