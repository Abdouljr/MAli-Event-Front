import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:front_mali_event/config.dart';
import 'package:front_mali_event/models/publication.model.dart';


class PublicationService {

  //-------------------- AJOUTER UNE PUBLICATION -------------------------------
  Future<void> add(Publication publications) async {
    final docPublication = Refference().publications.doc();
    publications.uid = docPublication.id;
    return await docPublication.set(publications.toMap());
  }


//-------------------- MODIFIER UNE PUBLICATION --------------------------------
  void update(Publication publication) async {
    final docPublication = Refference().publications.doc();
    await docPublication.update(publication.toMap());
  }

//-------------------- RECUPERER UNE PUBLICATION -------------------------------
  Future<Publication> get(String uid) async {
    final publication =  await Refference().publications.doc(uid).get();
    Map<String, dynamic> data = publication.data() as Map<String, dynamic>;
    return Publication.fromMap(data);
  }

//-------------------- RECUPERER TOUTES LES PUBLICATIONS -----------------------
  Stream<List<Publication>> get all {
    Query query = Refference().publications;
    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Publication.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }
}
