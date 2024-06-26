import 'package:flutter/material.dart';
import 'package:front_mali_event/Screen/Auth%20&%20inscription/authentification.dart';
import 'package:front_mali_event/constants/constant.dart';
import 'package:front_mali_event/models/utilisateur.model.dart';
import 'package:front_mali_event/services/utilisateur.service.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final userService = UtilisateurService();

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
              height: 40,
            ),
            // ======== ========== ============
            const Text(
              "Numero de telephone",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Color(0xFF3F5769),
                  hintText: '91 22 88 29 ',
                  suffixIcon: const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 30,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            // ======== ========== ============
            const Text(
              "Prenom",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
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
                    color: Colors.green,
                    size: 30,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            // ======== ========== ============
            const Text(
              "Email",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
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
                    color: Colors.green,
                    size: 30,
                  )),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  "S'isncrire",
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
            ))
          ],
        ),
      ),
    );
  }
}
