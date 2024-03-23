import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:front_mali_event/config.dart';
import 'package:front_mali_event/models/role.model.dart';

class RoleService {

  //-------------------- AJOUTER UNE ROLE ---------------------------------
  Future<void> add(Role role) async {
    final docRole = Refference().roles.doc();
    role.uid = docRole.id;
    return await docRole.set(role.toMap());
  }


//-------------------- MODIFIER UNE ROLE ---------------------------------
  void update(Role role) async {
    final docRole = Refference().roles.doc(role.uid);
    await docRole.update(role.toMap());
  }

//-------------------- RECUPERER UNE ROLE ---------------------------------
  Future<Role> get(String uid) async {
    final role =  await Refference().roles.doc(uid).get();
    Map<String, dynamic> data = role.data() as Map<String, dynamic>;
    return Role.fromMap(data);
  }

//-------------------- RECUPERER TOUTES LES ROLES --------------------------
  Stream<List<Role>> get all {
    Query query = Refference().roles;
    return query.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Role.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
    });
  }
}
