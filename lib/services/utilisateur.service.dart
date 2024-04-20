  import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:front_mali_event/config.dart';
import 'package:front_mali_event/models/utilisateur.model.dart';

class UtilisateurService {
  //-------------------- AJOUTER UN UTILISATEUR ---------------------------------
  Future<void> add(Utilisateur utilisateur, String roleUid) async {
    final docUtilisateur = Refference().utilisateurs.doc();
    utilisateur.uid = docUtilisateur.id;
    utilisateur.role = Refference().roles.doc(roleUid);
    return await docUtilisateur.set(utilisateur.toMap());
  }

//-------------------- MODIFIER UN UTILISATEUR ---------------------------------
  void update(Utilisateur utilisateur) async {
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
