import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:front_mali_event/config.dart';
import 'package:front_mali_event/constants/constant.dart';
import 'package:front_mali_event/models/evenement.model.dart';

class FavoriAndLikeService {
  //--------------------------- AJOUTER UN FAVORI OU UN LIKE -------------------
  void addFavoriOrLike(
      Evenement evenement, String uidUtilisateur, Actions action) async {
    String type = getType(action);
    if (type == 'invalide') {
      return;
    }
    final docFavori =
        Refference().utilisateurs.doc(uidUtilisateur).collection(type);
    await docFavori.doc(evenement.uid).set(evenement.toMap());
  }

//-------------------- ENLEVER UN FAVORI OU UN LIKE ----------------------------
  void deleteFavoriOrLike(
      Evenement evenement, String uidUtilisateur, Actions action) async {
    String type = getType(action);
    if (type == 'invalide') {
      return;
    }
    final docFavori =
        Refference().utilisateurs.doc(uidUtilisateur).collection(type);
    await docFavori.doc(evenement.uid).delete();
  }

  //-------------------- VERIFICATION ------------------------------------------
  Stream<Evenement> exist(
      String uidEvenement, String uidUtilisateur, Actions action) {
    String type = getType(action);
    if (type == 'invalide') {
      return const Stream.empty();
    }
    DocumentReference fovoriRef = Refference()
        .utilisateurs
        .doc(uidUtilisateur)
        .collection("Favoris")
        .doc(uidEvenement);

    return fovoriRef
        .snapshots()
        .map((doc) => Evenement.fromMap(doc.data() as Map<String, dynamic>));
  }

  //------------ RECUPERER LES FAVORIS DE L'UTILISATEUR COURANT ----------------
  Stream<List<Evenement>> mesFavoris(String uidUtilisateur) {
    final favorisRef =
        Refference().utilisateurs.doc(uidUtilisateur).collection("Favoris");
    return favorisRef.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Evenement.fromMap(doc.data());
      }).toList();
    });
  }
}
