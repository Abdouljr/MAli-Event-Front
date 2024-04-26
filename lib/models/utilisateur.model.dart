import 'package:cloud_firestore/cloud_firestore.dart';

class Utilisateur {
  String? uid;
  String prenom;
  String numero;
  String password;
  String nom;
  String email;
  DocumentReference? role;

  Utilisateur(
      {this.uid,
      required this.prenom,
      required this.numero,
      required this.password,
      required this.nom,
      required this.email,
      this.role});

  factory Utilisateur.fromMap(Map<String, dynamic> data) {
    return Utilisateur(
      uid: data['uid'],
      prenom: data['prenom'] ?? '',
      numero: data['numero'],
      password: data['password'],
      nom: data['nom'] ?? '',
      email: data['email'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'prenom': prenom,
      'numero': numero,
      'password': password,
      'nom': nom,
      'email': email,
      'role': role,
    };
  }
}
