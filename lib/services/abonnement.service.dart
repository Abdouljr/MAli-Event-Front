import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:front_mali_event/config.dart';
import 'package:front_mali_event/models/utilisateur.model.dart';

class AbonnnementService {
//--------------------------- AJOUTER UN ABONNEMENT ----------------------------
  void addAbonnement(Utilisateur artiste, String uidUtilisateur) async {
    final docAbonnement =
        Refference().utilisateurs.doc(uidUtilisateur).collection("abonnements");
    await docAbonnement.doc(artiste.uid).set(artiste.toMap());
  }

//-------------------- ENLEVER UN ABONNEMENT -----------------------------------
  void deleteAbonnement(Utilisateur artiste, String uidUtilisateur) async {
    final docAbonnement =
        Refference().utilisateurs.doc(uidUtilisateur).collection("abonnements");
    await docAbonnement.doc(artiste.uid).delete();
  }

  //-------------------- VERIFICATION DANS ABONNEMENTS -------------------------
  Stream<Utilisateur> isAbonner(String uidArtiste, String uidUtilisateur) {
    DocumentReference abonnementRef = Refference()
        .utilisateurs
        .doc(uidUtilisateur)
        .collection("abonnements")
        .doc(uidArtiste);

    return abonnementRef
        .snapshots()
        .map((doc) => Utilisateur.fromMap(doc.data() as Map<String, dynamic>));
  }

  //-------------------- RECUPERER LES ABONNEMENTS DE L'UTILISATEUR COURANT ----
  Stream<List<Utilisateur>> mesAbonnements(String uidUtilisateur) {
    final abonnementRef =
        Refference().utilisateurs.doc(uidUtilisateur).collection("abonnements");
    return abonnementRef.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Utilisateur.fromMap(doc.data());
      }).toList();
    });
  }
}
