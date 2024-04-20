import 'package:cloud_firestore/cloud_firestore.dart';

class Utilisateur {
  String uid;
  String prenom;
  String nom;
  String email;
  DocumentReference role;

  Utilisateur(
      {
      required this.uid,
      required this.prenom,
      required this.nom,
      required this.email,
      required this.role
      });

  factory Utilisateur.fromMap(Map<String, dynamic> data) {
    return Utilisateur(
      uid: data['uid'],
      prenom: data['prenom'] ?? '',
      nom: data['nom'] ?? '',
      email: data['email'] ?? '',
      role: data['role'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'prenom': prenom,
      'nom': nom,
      'email': email,
      'role': role,
    };
  }
}
