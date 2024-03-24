import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:front_mali_event/config.dart';

import '../models/commentaire.model.dart';


class CommentaireService {

  //-------------------- AJOUTER UN COMMENTAIRE --------------------------------
  Future<void> add(Commentaire commentaire, String publicationUid,
                                           String utilisateurUid) async {
    final docCommentaire = Refference().commentaires.doc();
    commentaire.uid = docCommentaire.id;
    commentaire.publication = Refference().publications.doc(publicationUid);
    commentaire.utilisateur = Refference().utilisateurs.doc(utilisateurUid);
    return await docCommentaire.set(commentaire.toMap());
  }


//-------------------- MODIFIER UN COMMENTAIRE ---------------------------------
  void update(Commentaire commentaire) async {
    final docCommentaire = Refference().commentaires.doc(commentaire.uid);
    await docCommentaire.update(commentaire.toMap());
  }

//-------------------- RECUPERER UN COMMENTAIRE --------------------------------
  Future<Commentaire> get(String uid) async {
    final commentaire =  await Refference().commentaires.doc(uid).get();
    Map<String, dynamic> data = commentaire.data() as Map<String, dynamic>;
    return Commentaire.fromMap(data);
  }

//-------------------- RECUPERER TOUS LES COMMENTAIRES -------------------------
  Stream<List<Commentaire>> get all {
    Query query = Refference().commentaires;
    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Commentaire.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }
}
