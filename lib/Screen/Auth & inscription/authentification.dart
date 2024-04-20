import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:front_mali_event/Screen/Auth%20&%20inscription/forgetPassword.dart';
import 'package:front_mali_event/Screen/Auth%20&%20inscription/verify.dart';

import 'inscription.dart';

class Authentification extends StatefulWidget {
  const Authentification({Key? key}) : super(key: key);
  static String verify = "";
  @override
  State<Authentification> createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
  TextEditingController countryController = TextEditingController();
  var phone = "";

  final _formSignInKey = GlobalKey<FormState>();
  bool rememberPassword = true;

  @override
  void initState() {
    super.initState();
    countryController.text = "+223";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F2D42),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 80, left: 10, right: 10, bottom: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formSignInKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Connexions",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF0094ED),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Votre aventure commence ici",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  "connectez-vous pour explorer.",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Numero de téléphone",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return "Votre numéro s'il vous plait";
                  //   }
                  //   return null;
                  // },
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    // label: const Text('Numero de téléphone'),
                    hintText: 'Entrer votre numéro de téléphone',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0xFF3F5769),
                    hintStyle: const TextStyle(color: Colors.white70),
                    suffixIcon: const Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                      size: 30,
                    ),
                    errorStyle: const TextStyle(
                        color: Colors
                            .white), // <-- Ajoute la couleur blanche au message d'erreur
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                const Text(
                  "Mot de passe",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0xFF3F5769),
                    hintText: 'Mot de passe',
                    hintStyle: const TextStyle(color: Colors.white70),
                    suffixIcon: const Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // Container(

                //   alignment: Alignment.centerRight,
                //   child: const Text(

                //     'Mot de passe oublié?',
                //     style: TextStyle(color: Colors.blue),
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ForgetPassword(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.blue,
                        backgroundColor: const Color(0xFF0F2D42),
                      ),
                      child: const Text(
                        "Mot de passe oublié?",
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      // if (_formSignInKey.currentState!.validate() &&
                      //     rememberPassword) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(
                      //       content: Text('Processing Data'),
                      //     ),
                      //   );
                      // } else if (!rememberPassword) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(
                      //         content: Text(
                      //             'Please agree to the processing of personal data')),
                      //   );
                      // }
                      // try {
                      //   await FirebaseAuth.instance.verifyPhoneNumber(
                      //     phoneNumber: '${countryController.text + phone}',
                      //     verificationCompleted:
                      //         (PhoneAuthCredential credential) {
                      //       // Traitement lorsque la vérification est terminée automatiquement
                      //       // Navigator.pushNamed(context, 'verify');
                      //     },
                      //     verificationFailed: (FirebaseAuthException e) {
                      //       // Traitement en cas d'échec de la vérification
                      //       print('Erreur de vérification : ${e.message}');
                      //     },
                      //     codeSent: (String verificationId, int? resendToken) {
                      //       // Traitement après l'envoi du code de vérification
                      //       // Navigator.pushNamed(context, 'verify', arguments: {
                      //       //   'verificationId': verificationId,
                      //       // });
                      //       Authentification.verify = verificationId;
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //           builder: (_) => const MyVerify(),
                      //         ),
                      //       );
                      //     },
                      //     codeAutoRetrievalTimeout: (String verificationId) {
                      //       // Traitement en cas de délai d'attente dépassé
                      //     },
                      //   );
                      // } catch (e) {
                      //   // Gestion des erreurs générales
                      //   print('Erreur : $e');
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      "Se Connecter",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'ou continuer avec',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .18,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.facebook_outlined,
                        size: 40,
                        color: Color(0xFF1877F2),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .18,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/google.jpg',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .18,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.apple_outlined,
                        size: 40,
                        color: Color(0xFF29282D),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .18,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/twiter.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      child: const Text(
                        "Vous n'avez pas de compte?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const Inscription(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text(
                        "S'inscrire",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
