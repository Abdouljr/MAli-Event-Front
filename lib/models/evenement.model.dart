import 'package:cloud_firestore/cloud_firestore.dart';

class Evenement {
  String uid;
  String description;
  Timestamp dateDebut;
  Timestamp dateFin;
  DocumentReference lieu;
  DocumentReference typeEvenement;

  Evenement({
    required this.uid,
    required this.description,
    required this.dateDebut,
    required this.dateFin,
    required this.lieu,
    required this.typeEvenement,
  });

  factory Evenement.fromMap(Map<String, dynamic> data) {
    return Evenement(
      uid: data['uid'],
      description: data['description'] ?? '',
      dateDebut: data['dateDebut'],
      dateFin: data['dateFin'],
      lieu: data['lieu'],
      typeEvenement: data['typeEvenement'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'description': description,
      'dateDebut': dateDebut,
      'dateFin': dateFin,
      'lieu': lieu,
      'typeEvenement': typeEvenement,
    };
  }

  void validateDate() {
    if (dateDebut.millisecondsSinceEpoch >= dateFin.millisecondsSinceEpoch) {
      throw Exception(
          "La date de début doit être antérieure à la date de fin.");
    }
  }
}
