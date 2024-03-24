import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:front_mali_event/config.dart';
import '../models/evenement.model.dart';

class EvenementService {
  //-------------------- AJOUTER UN EVENEMENT ----------------------------------
  Future<void> add(Evenement evenement, String lieuxUid, String typeEvenementUid) async {
    try {
      evenement.validateDate();
      final docEvenement = Refference().evenements.doc(evenement.uid);
      evenement.uid = docEvenement.id;
      evenement.typeEvenement = Refference().typeEvenements.doc(typeEvenementUid);
      evenement.lieu = Refference().lieux.doc(lieuxUid);
      return await docEvenement.set(evenement.toMap());
    } catch (e) {
      debugPrint("Erreur : $e");
    }
  }

//-------------------- MODIFIER UN EVENEMENT -----------------------------------
  void update(Evenement evenement) async {
    final docEvenement = Refference().evenements.doc(evenement.uid);
    await docEvenement.update(evenement.toMap());
  }

//-------------------- RECUPERER UN EVENEMENT ----------------------------------
  Future<Evenement> get(String evenementUid) async {
    final evenement = await Refference().evenements.doc(evenementUid).get();
    Map<String, dynamic> data = evenement.data() as Map<String, dynamic>;
    return Evenement.fromMap(data);
  }

//-------------------- RECUPERER TOUS LES EVENEMENTS ---------------------------
  Stream<List<Evenement>> get all {
    Query query = Refference().evenements.orderBy("dateDebut", descending: false);
    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Evenement.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }
}
