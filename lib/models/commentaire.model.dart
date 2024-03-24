import 'package:cloud_firestore/cloud_firestore.dart';

class Commentaire {
  String uid;
  String contenu;
  Timestamp? date;
  DocumentReference publication;
  DocumentReference utilisateur;

  Commentaire({
    required this.uid,
    required this.contenu,
    this.date,
    required this.publication,
    required this.utilisateur,
  });

  factory Commentaire.fromMap(Map<String, dynamic> data) {
    return Commentaire(
      uid: data['uid'],
      contenu: data['contenu'] ?? '',
      date: data['date'] ?? Timestamp.now(),
      publication: data['publication'],
      utilisateur: data['utilisateur'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'contenu': contenu,
      'date': date,
      'publication': publication,
      'utilisateur': utilisateur,
    };
  }
}
