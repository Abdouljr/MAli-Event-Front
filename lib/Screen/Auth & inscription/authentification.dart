import 'package:flutter/material.dart';

import 'inscription.dart';

class Authentification extends StatefulWidget {
  const Authentification({super.key});

  @override
  State<Authentification> createState() => _AuthentificationState();
}

class _AuthentificationState extends State<Authentification> {
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
              "Connexion",
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF0094ED),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Votre aventure commence ici",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w400)),
            const Text("connectez-vous pour explorer.",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 40,
            ),
            // ======== ========== ============
            const Text(
              "Numero de telephone",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              style: TextStyle(
                  color: Colors.white), // Définir la couleur du texte saisi
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color(0xFF3F5769),
                hintText: '91 22 88 29',
                hintStyle: TextStyle(
                    color: Colors.white70), // Définir la couleur du placeholder
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
            // ======== ========== ============
            const Text(
              "Mot de passe",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              obscureText: true, // Champ de mot de passe
              style: TextStyle(color: Colors.white), // Couleur du texte saisi
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color(0xFF3F5769),
                hintText: 'Mot de passe',
                hintStyle:
                    TextStyle(color: Colors.white70), // Couleur du placeholder
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
            // ======== ========== ============
            Container(
              alignment: Alignment.centerRight,
              child: const Text(
                'Mot de passe oublié?',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
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
                      fontWeight: FontWeight.w600),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .18,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Icon(
                    Icons.facebook_outlined,
                    size: 40,
                    color: Color(0xFF1877F2), // Couleur officielle de Facebook
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .18,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    
                    child: Image.asset(
                      'assets/images/google.jpg', // Remplacez par le chemin de votre image Google personnalisée
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
                      borderRadius: BorderRadius.circular(8)),
                  child: const Icon(
                    Icons.apple_outlined,
                    size: 40,
                    color: Color(0xFF29282D), // Couleur officielle de Facebook
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .18,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    // Ajoutez ce widget
                    child: Image.asset(
                      'assets/images/twiter.png', // Remplacez par le chemin de votre image Google personnalisée
                      width: 40, // Réduisez la largeur ici
                      height: 40, // Réduisez la hauteur ici
                    ),
                  ),
                ),
              ],
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
                      "Vous n'avez pas de compte?",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const Inscription()));
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
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
