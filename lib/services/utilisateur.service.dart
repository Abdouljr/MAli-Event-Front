import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:front_mali_event/config.dart';
import 'package:front_mali_event/constants/constant.dart';
import 'package:front_mali_event/models/utilisateur.model.dart';

class UtilisateurService {
  //-------------------- AJOUTER UN UTILISATEUR ---------------------------------
  Future<void> add(Utilisateur utilisateur, RoleEnum role) async {
    final docUtilisateur = Refference().utilisateurs.doc();
    utilisateur.uid = docUtilisateur.id;
    utilisateur.role = getRole(role);
    return await docUtilisateur.set(utilisateur.toMap());
  }

//-------------------- MODIFIER UN UTILISATEUR ---------------------------------
  void update(Utilisateur utilisateur, RoleEnum role) async {
    utilisateur.role = getRole(role);
    final docUtilisateur = Refference().utilisateurs.doc(utilisateur.uid);
    await docUtilisateur.update(utilisateur.toMap());
  }

//-------------------- RECUPERER UN UTILISATEUR ---------------------------------
  Future<Utilisateur> get(String uid) async {
    final utilisateur = await Refference().utilisateurs.doc(uid).get();
    Map<String, dynamic> data = utilisateur.data() as Map<String, dynamic>;
    return Utilisateur.fromMap(data);
  }

//-------------------- RECUPERER TOUS LES UTILISATEURS --------------------------
  Stream<List<Utilisateur>> get all {
    Query query = Refference().utilisateurs.orderBy("nom", descending: false);
    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Utilisateur.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }
}
