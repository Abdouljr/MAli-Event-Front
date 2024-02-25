import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Config {
  static final assets = _Asset();
  static final couleur = _Color();
}

class _Asset {
  final logoSansFond = "assets/images/logo/logo.png";
}

class _Color {
  final bleu = const Color(0xFF0094ED);
  final grise = const Color(0xFF68798B);
  final background = const Color(0xFF0196D5).withOpacity(.5);
}

class Refference {

  final CollectionReference roles =
      FirebaseFirestore.instance.collection("roles");

  final CollectionReference utilisateurs =
      FirebaseFirestore.instance.collection("utilisateurs");

}