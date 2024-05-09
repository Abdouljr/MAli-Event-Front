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

  //-------------------- VERIFIER SI LE NUMERO EXISTE DEJA ----------------------
  Future<bool> checkNumeroExists(String numero) async {
    final querySnapshot = await Refference()
        .utilisateurs
        .where('numero', isEqualTo: numero)
        .limit(1)
        .get();

    return querySnapshot.docs.isNotEmpty;
  }

  //-------------------- VERIFIER SI L'EMAIL EXISTE DEJA -----------------------
  Future<bool> checkEmailExists(String email) async {
    final querySnapshot = await Refference()
        .utilisateurs
        .where('email', isEqualTo: email)
        .limit(1)
        .get();

    return querySnapshot.docs.isNotEmpty;
  }


// Future<bool> connect(String identifiant, String password) async {
//     // Vérifier d'abord si l'identifiant est un numéro de téléphone ou un email
//     final isNumero = RegExp(r'^[0-9]+$').hasMatch(identifiant);
//     QuerySnapshot querySnapshot;

//     if (isNumero) {
//       // Si c'est un numéro de téléphone, vérifiez s'il existe dans la base de données
//       querySnapshot = await Refference().utilisateurs.where('numero', isEqualTo: identifiant).limit(1).get();
//     } else {
//       // Sinon, vérifiez si c'est un email et s'il existe dans la base de données
//       querySnapshot = await Refference().utilisateurs.where('email', isEqualTo: identifiant).limit(1).get();
//     }

//     // Si aucun utilisateur correspondant n'est trouvé, renvoyer false
//     if (querySnapshot.docs.isEmpty) {
//       return false;
//     }

//     // Récupérer l'utilisateur correspondant
//     final utilisateur = querySnapshot.docs.first.data() as Map<String, dynamic>;

//     // Vérifier si le mot de passe correspond
//     if (utilisateur['password'] == password) {
//       return true;
//     } else {
//       return false;
//     }
//   }

Future<Map<String, dynamic>?> connect(String identifiant, String password) async {
    // Vérifier d'abord si l'identifiant est un numéro de téléphone ou un email
    final isNumero = RegExp(r'^[0-9]+$').hasMatch(identifiant);
    QuerySnapshot querySnapshot;

    if (isNumero) {
      // Si c'est un numéro de téléphone, vérifiez s'il existe dans la base de données
      querySnapshot = await Refference().utilisateurs.where('numero', isEqualTo: identifiant).limit(1).get();
    } else {
      // Sinon, vérifiez si c'est un email et s'il existe dans la base de données
      querySnapshot = await Refference().utilisateurs.where('email', isEqualTo: identifiant).limit(1).get();
    }

    // Si aucun utilisateur correspondant n'est trouvé, renvoyer null
    if (querySnapshot.docs.isEmpty) {
      return null;
    }

    // Récupérer l'utilisateur correspondant
    final utilisateur = querySnapshot.docs.first.data() as Map<String, dynamic>;

    // Vérifier si le mot de passe correspond
    if (utilisateur['password'] == password) {
      return utilisateur;
    } else {
      return null;
    }
  }

   //-------------------- RECUPERER LES INFORMATIONS DE L'UTILISATEUR CONNECTE --------------------------
  Future<Utilisateur> getUserInfo(String email) async {
  final utilisateurDocs = await Refference().utilisateurs.where('email', isEqualTo: email).get();
  if (utilisateurDocs.docs.isNotEmpty) {
    final data = utilisateurDocs.docs.first.data() as Map<String, dynamic>;
    return Utilisateur.fromMap(data);
  } else {
    throw Exception('Utilisateur non trouvé');
  }
}


}
