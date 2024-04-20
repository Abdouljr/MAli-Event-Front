import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:front_mali_event/Screen/Auth%20&%20inscription/authentification.dart';
import 'package:front_mali_event/Screen/Auth%20&%20inscription/verify.dart';

import 'inscription.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  static String verify = "";
  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                  "Mot de passe oublié",
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Numero de téléphone';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    label: const Text('Numero de téléphone'),
                    hintText: 'Numero de téléphone',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: const Color(0xFF3F5769),
                    // hintText: '91 22 88 29',
                    hintStyle: const TextStyle(color: Colors.white70),
                    suffixIcon: const Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                
              
               const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 40,
                        child: TextField(
                          controller: countryController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Text(
                        "|",
                        style: TextStyle(fontSize: 33, color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          onChanged: (value) {
                            setState(() {
                              phone = value;
                            });
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formSignInKey.currentState!.validate() &&
                          rememberPassword) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Processing Data'),
                          ),
                        );
                      } else if (!rememberPassword) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                                  'Please agree to the processing of personal data')),
                        );
                      }
                      try {
                        await FirebaseAuth.instance.verifyPhoneNumber(
                          phoneNumber: '${countryController.text + phone}',
                          verificationCompleted:
                              (PhoneAuthCredential credential) {
                            // Traitement lorsque la vérification est terminée automatiquement
                            // Navigator.pushNamed(context, 'verify');
                          },
                          verificationFailed: (FirebaseAuthException e) {
                            // Traitement en cas d'échec de la vérification
                            print('Erreur de vérification : ${e.message}');
                          },
                          codeSent: (String verificationId, int? resendToken) {
                            // Traitement après l'envoi du code de vérification
                            // Navigator.pushNamed(context, 'verify', arguments: {
                            //   'verificationId': verificationId,
                            // });
                            ForgetPassword.verify = verificationId;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const MyVerify(),
                              ),
                            );
                          },
                          codeAutoRetrievalTimeout: (String verificationId) {
                            // Traitement en cas de délai d'attente dépassé
                          },
                        );
                      } catch (e) {
                        // Gestion des erreurs générales
                        print('Erreur : $e');
                      }
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      child: const Text(
                        "Je me souvient du mot de passe?",
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
                            builder: (_) => const Authentification(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text(
                        "Se connter",
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
