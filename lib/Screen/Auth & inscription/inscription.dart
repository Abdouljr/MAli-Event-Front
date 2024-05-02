import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front_mali_event/Screen/Auth%20&%20inscription/authentification.dart';
import 'package:front_mali_event/Screen/Auth%20&%20inscription/otp.dart';
import 'package:front_mali_event/constants/constant.dart';
import 'package:front_mali_event/models/utilisateur.model.dart';
import 'package:front_mali_event/services/utilisateur.service.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);
    static String verify = "";
  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final userService = UtilisateurService();

  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _prenomController.dispose();
    _nomController.dispose();
    _emailController.dispose();
    _numeroController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool _passwordError = false;
  bool _passwordTouched = false;

  bool isPasswordValid(String password) {
    // Vérifications des conditions pour un mot de passe valide
    RegExp upperCase = RegExp(r'[A-Z]');
    RegExp lowerCase = RegExp(r'[a-z]');
    RegExp specialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

    return password.length >= 6 &&
        upperCase.hasMatch(password) &&
        lowerCase.hasMatch(password) &&
        specialChar.hasMatch(password);
  }

 
  bool isEmailValid(String email) {
    // Utiliser une expression régulière pour valider le format de l'e-mail
    RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  Future<void> _inscription() async {
    String nom = _nomController.text;
    String prenom = _prenomController.text;
    String email = _emailController.text;
    String numero = "+223${_numeroController.text}";
    String password = _passwordController.text;

    // Vérifier que les champs ne sont pas vides
    if (nom.isEmpty ||
        prenom.isEmpty ||
        email.isEmpty ||
        numero.isEmpty ||
        password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Veuillez remplir tous les champs.')),
      );
      return;
    }

    // Vérifier si le mot de passe a au moins 6 caractères
    if (password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Le mot de passe doit avoir au moins 6 caractères.')),
      );
      return;
    }

    // Vérifier si le mot de passe contient au moins une lettre majuscule, une minuscule et un caractère spécial
    RegExp upperCase = RegExp(r'[A-Z]');
    RegExp lowerCase = RegExp(r'[a-z]');
    RegExp specialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

    if (!upperCase.hasMatch(password) ||
        !lowerCase.hasMatch(password) ||
        !specialChar.hasMatch(password)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text(
                'Le mot de passe doit contenir au moins une lettre majuscule, une minuscule et un caractère spécial.')),
      );
      return;
    }

    if (!isEmailValid(email)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text("Veuillez saisir une adresse e-mail valide.")),
      );
      return;
    }

    // Vérifier l'existence de l'utilisateur avec le même numéro de téléphone
    bool numeroExists = await userService.checkNumeroExists(numero);
    if (numeroExists) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text(
                'Un utilisateur avec ce numéro de téléphone existe déjà.')),
      );
      return;
    }

    // Vérifier l'existence de l'utilisateur avec la même adresse e-mail
    bool emailExists = await userService.checkEmailExists(email);
    if (emailExists) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content:
                Text('Un utilisateur avec cette adresse e-mail existe déjà.')),
      );
      return;
    }

    // Demander la vérification du numéro de téléphone via OTP
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: numero,
      verificationCompleted: (PhoneAuthCredential credential) async {
        // Cette fonction est appelée automatiquement si la vérification est complétée automatiquement (par exemple, sur le même appareil)
        // Vous pouvez ajouter ici le code pour créer l'utilisateur avec le numéro vérifié
        Utilisateur utilisateur = Utilisateur(
          prenom: prenom,
          nom: nom,
          numero: numero,
          email: email,
          password:
              password, // Assurez-vous de traiter correctement le mot de passe
        );
        userService.add(utilisateur, RoleEnum.admin);
      },
      verificationFailed: (FirebaseAuthException e) {
        // Gérer les erreurs de vérification ici
        print('Erreur de vérification OTP : ${e.message}');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Erreur de vérification OTP.'),
          ),
        );
      },
      codeSent: (String verificationId, int? resendToken) {
        // L'OTP a été envoyé avec succès, vous pouvez maintenant afficher l'interface utilisateur pour saisir le code OTP
        // Vous pouvez utiliser le verificationId et resendToken pour vérifier le code entré par l'utilisateur
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Code OTP envoyé avec succès.'),
          ),
        );
            Inscription.verify = verificationId;
            //                 Navigator.push(
            //                   context,
            //                   MaterialPageRoute(
            //                     builder: (_) => const Otp(),
            //                   ),
            //                 );

                 Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => Otp(
          prenom: prenom,
          nom: nom,
          numero: numero,
          email: email,
          password:password, 
        ),
      ),
    );
        // Vous pouvez stocker le verificationId et resendToken pour une utilisation ultérieure
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        // Gérer le timeout de récupération automatique du code OTP ici
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Délai de récupération du code OTP expiré.'),
          ),
        );
      },
      timeout: const Duration(
          seconds: 60), // Durée d'attente pour la vérification OTP
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F2D42),
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Inscription",
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF0094ED),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Votre aventure commence ici",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                )),
            const Text("inscrivez-vous pour explorer.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Numero de telephone",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
              controller: _numeroController,
              keyboardType:
                  TextInputType.number, // Pour n'accepter que des chiffres
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly
              ], // Pour filtrer les caractères et n'accepter que des chiffres
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color(0xFF3F5769),
                hintText: '91 22 88 29',
                suffixIcon: const Icon(
                  Icons.check_circle,
                  color: Colors
                      .grey, // Couleur par défaut pour l'icône de vérification
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              "Nom",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
              controller: _nomController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color(0xFF3F5769),
                hintText: 'Camara',
                suffixIcon: const Icon(
                  Icons.check_circle,
                  color: Colors
                      .grey, // Couleur par défaut pour l'icône de vérification
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Prenom",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
              controller: _prenomController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color(0xFF3F5769),
                hintText: 'Mamdy',
                suffixIcon: const Icon(
                  Icons.check_circle,
                  color: Colors
                      .grey, // Couleur par défaut pour l'icône de vérification
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Email",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Color(0xFF3F5769),
                hintText: 'exemple@gmail.com ',
                suffixIcon: const Icon(
                  Icons.check_circle,
                  color: Colors
                      .grey, // Couleur par défaut pour l'icône de vérification
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            const Text(
              "Password",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
              controller: _passwordController,
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
                suffixIcon: Icon(
                  Icons.check_circle_outline,
                  color: _passwordError ||
                          (!_passwordTouched &&
                              isPasswordValid(_passwordController.text))
                      ? Colors.red
                      : Colors.green,
                  size: 30,
                ),
                // Afficher le message d'erreur uniquement lorsque le champ est touché et invalide
                errorText: _passwordTouched && !_passwordError
                    ? 'Le mot de passe doit avoir au moins 6 caractères, une majuscule, une minuscule et un caractère spécial.'
                    : null,
              ),
              onChanged: (value) {
                setState(() {
                  _passwordError = false;
                });
              },
              onTap: () {
                setState(() {
                  _passwordTouched =
                      true; // Mettre à jour l'état pour indiquer que le champ a été touché
                });
              },
            ),
            const SizedBox(height: 1),
            const Text(
              "Confirmer le mot de passe",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextFormField(
              controller: _confirmPasswordController,
              obscureText: true,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color(0xFF3F5769),
                hintText: 'Confirmer le mot de passe',
                hintStyle: const TextStyle(color: Colors.white70),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _inscription,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  "S'inscrire",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      child: const Text(
                        'Vous avez déjà un compte?',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Utilisateur utilisateur = Utilisateur(
                            uid: "a7ez5YiF2UBtW1OxUxqa",
                            prenom: "Aziz",
                            nom: "camara",
                            numero: "+22379522067",
                            password: "1234567",
                            email: "maiga@gmail.com");
                        userService.update(utilisateur, RoleEnum.admin);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const Authentification()));
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text(
                        "Se connecter",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
