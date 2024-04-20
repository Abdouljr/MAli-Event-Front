import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:front_mali_event/services/utilisateur.service.dart';

class AuthService {
  final userService = UtilisateurService();
  void otp(String numero) async{
     try {
  await FirebaseAuth.instance.verifyPhoneNumber(
  phoneNumber: numero,
  verificationCompleted:
      (PhoneAuthCredential credential) {
    // Traitement lorsque la vérification est terminée automatiquement
    // Navigator.pushNamed(context, 'verify');
    debugPrint("User_data $credential");
    //userService.add(utilisateur, roleUid)
  },
  verificationFailed: (FirebaseAuthException e) {
    // Traitement en cas d'échec de la vérification
    debugPrint('Erreur de vérification : ${e.message}');
  },
  codeSent: (String verificationId, int? resendToken) {
    // Traitement après l'envoi du code de vérification
    // Navigator.pushNamed(context, 'verify', arguments: {
    //   'verificationId': verificationId,
    // });
    
  },
  codeAutoRetrievalTimeout: (String verificationId) {
    // Traitement en cas de délai d'attente dépassé
  },
  );
  } catch (e) {
  // Gestion des erreurs générales
  debugPrint('Erreur : $e');
  }
  }
  
}