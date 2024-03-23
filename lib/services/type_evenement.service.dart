import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:front_mali_event/config.dart';
import '../models/type_evenement.model.dart';

class TypeEvenementService {

  //-------------------- AJOUTER UN TYPE EVENEMENT -----------------------------
  Future<void> add(TypeEvenement typeEvenement) async {
    final docTypeEvenement = Refference().typeEvenements.doc();
    typeEvenement.uid = docTypeEvenement.id;
    return await docTypeEvenement.set(typeEvenement.toMap());
  }


//-------------------- MODIFIER UN TYPE EVENEMENT ------------------------------
  void update(TypeEvenement typeEvenement) async {
    final docTypeEvenement = Refference().typeEvenements.doc(typeEvenement.uid);
    await docTypeEvenement.update(typeEvenement.toMap());
  }

//-------------------- RECUPERER UN TYPE EVENEMENT -----------------------------
  Future<TypeEvenement> get(String uid) async {
    final typeEvenement =  await Refference().typeEvenements.doc(uid).get();
    Map<String, dynamic> data = typeEvenement.data() as Map<String, dynamic>;
    return TypeEvenement.fromMap(data);
  }

//-------------------- RECUPERER TOUS LES TYPES EVENEMENTS ---------------------
  Stream<List<TypeEvenement>> get all {
    Query query = Refference().typeEvenements;
    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return TypeEvenement.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }
}
