import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:front_mali_event/config.dart';
import 'package:front_mali_event/models/lieu.model.dart';


class LieuService {

  //-------------------- AJOUTER UN LIEU ---------------------------------------
  Future<void> add(Lieu lieu) async {
    final docLieu = Refference().lieux.doc();
    lieu.uid = docLieu.id;
    return await docLieu.set(lieu.toMap());
  }


//-------------------- MODIFIER UN LIEU ----------------------------------------
  void update(Lieu lieu) async {
    final docLieu = Refference().lieux.doc(lieu.uid);
    await docLieu.update(lieu.toMap());
  }

//-------------------- RECUPERER UN LIEU ---------------------------------------
  Future<Lieu> get(String uid) async {
    final lieu =  await Refference().lieux.doc(uid).get();
    Map<String, dynamic> data = lieu.data() as Map<String, dynamic>;
    return Lieu.fromMap(data);
  }

//-------------------- RECUPERER TOUS LES LIEUX --------------------------------
  Stream<List<Lieu>> get all {
    Query query = Refference().lieux;
    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Lieu.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }
}
