import 'package:front_mali_event/config.dart';
import 'package:front_mali_event/models/notification.model.dart';

class NotificationService {
//--------------------------- AJOUTER UNE NOTIFICATION -------------------------
  void addNotification(Notification notification, String uidUtilisateur) async {
    final docNotification = Refference()
        .utilisateurs
        .doc(uidUtilisateur)
        .collection("notifications");
    await docNotification.doc(notification.uid).set(notification.toMap());
  }

//-------------------- SUPPRIMER UNE NOTIFCATION -------------------------------
  void deleteNotification(
      Notification notification, String uidUtilisateur) async {
    final docNotification = Refference()
        .utilisateurs
        .doc(uidUtilisateur)
        .collection("notifications");
    await docNotification.doc(notification.uid).delete();
  }

  //-------------- RECUPERER LES NOTIFICATIONS DE L'UTILISATEUR COURANT --------
  Stream<List<Notification>> getNotifications(String uidUtilisateur) {
    final abonnementRef = Refference()
        .utilisateurs
        .doc(uidUtilisateur)
        .collection("notifications");
    return abonnementRef.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        return Notification.fromMap(doc.data());
      }).toList();
    });
  }
}
