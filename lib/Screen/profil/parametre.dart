import 'package:flutter/material.dart';

class Parametre extends StatefulWidget {
  const Parametre({Key? key}) : super(key: key);

  @override
  State<Parametre> createState() => _ParametreState();
}

class _ParametreState extends State<Parametre> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nomController = TextEditingController();
  final TextEditingController _prenomController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _ancienMotDePasseController =
      TextEditingController();
  final TextEditingController _nouveauMotDePasseController =
      TextEditingController();
  final TextEditingController _confirmerMotDePasseController =
      TextEditingController();
  bool _obscureAncienMotDePasse = true;
  bool _obscureNouveauMotDePasse = true;
  bool _obscureConfirmerMotDePasse = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F2D42),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nomController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'Nom',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF0094ED), width: 10.0),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(12.0),
                        right: Radius.circular(12.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF0094ED), width: 10.0),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(12.0),
                        right: Radius.circular(12.0),
                      ),
                    ),
                    errorStyle: TextStyle(
                        color: Colors
                            .white), // Couleur de la police en cas d'erreur
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red,
                          width: 10.0), // Couleur de la bordure en cas d'erreur
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(12.0),
                        right: Radius.circular(12.0),
                      ),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red,
                          width:
                              10.0), // Couleur de la bordure en cas d'erreur avec focus
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(12.0),
                        right: Radius.circular(12.0),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer votre nom';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _usernameController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: "Nom d'utilisateur",
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF0094ED), width: 10.0),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(12.0),
                        right: Radius.circular(12.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF0094ED), width: 10.0),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(12.0),
                        right: Radius.circular(12.0),
                      ),
                    ),
                    errorStyle: TextStyle(
                        color: Colors
                            .white), // Couleur de la police en cas d'erreur
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red,
                          width: 10.0), // Couleur de la bordure en cas d'erreur
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(12.0),
                        right: Radius.circular(12.0),
                      ),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red,
                          width:
                              10.0), // Couleur de la bordure en cas d'erreur avec focus
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(12.0),
                        right: Radius.circular(12.0),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Veuillez entrer votre nom d'utilisateur";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: _prenomController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    labelText: 'Prénom',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF0094ED), width: 10.0),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(12.0),
                        right: Radius.circular(12.0),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFF0094ED), width: 10.0),
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(12.0),
                        right: Radius.circular(12.0),
                      ),
                    ),
                    errorStyle: TextStyle(
                        color: Colors
                            .white), // Couleur de la police en cas d'erreur
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red,
                          width: 10.0), // Couleur de la bordure en cas d'erreur
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(12.0),
                        right: Radius.circular(12.0),
                      ),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.red,
                          width:
                              10.0), // Couleur de la bordure en cas d'erreur avec focus
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(12.0),
                        right: Radius.circular(12.0),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Veuillez entrer votre prénom';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Le formulaire est valide, vous pouvez traiter les données ici
                        String nom = _nomController.text;

                        String prenom = _prenomController.text;
                        // ignore: avoid_print
                        print(
                            "Nom: $nom, Prénom: $prenom, Nom d'utilisateur:username");
                      }
                    },
                  
                    // ignore: sort_child_properties_last
                    child: const Text('Modifier'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50.0),
                Container(
                  // width: 50, // Largeur fixe de 50 pixels
                  height: 50, // Hauteur fixe de 50 pixels
                  decoration: BoxDecoration(
                    color: const Color(0xFF0E3751), // Couleur de fond bleue
                    borderRadius: BorderRadius.circular(
                        12), // Bordure arrondie avec un rayon de 12 pixels
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.settings, color: Colors.white),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            _afficherBoiteDialogueChangementMotDePasse();
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: const Center(
                              child: Text(
                                "Modifier le mot de passe",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward_ios_sharp,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24.0),
                Container(
                  // width: 50, // Largeur fixe de 50 pixels
                  height: 50, // Hauteur fixe de 50 pixels
                  decoration: BoxDecoration(
                    color:
                        const Color.fromARGB(255, 248, 1, 1), // Couleur de fond bleue
                    borderRadius: BorderRadius.circular(
                        12), // Bordure arrondie avec un rayon de 12 pixels
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.login_outlined, color: Colors.white),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          child: const Center(
                            child: Text(
                              "Déconnexion",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_forward_ios_sharp,
                            color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _afficherBoiteDialogueChangementMotDePasse() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              backgroundColor: const Color(0xFF0F2D42),
              // color: const Color(0xFF0F2D42),
              title: const Text(
                'Modifier le mot de passe',
                style: TextStyle(color: Colors.white),
              ),
              content: Container(
                width: 600.0,
                height: 250.0,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    buildPasswordTextField(
                      controller: _ancienMotDePasseController,
                      labelText: 'Ancien mot de passe',
                      obscureText: _obscureAncienMotDePasse,
                      onPressed: () {
                        setState(() {
                          _obscureAncienMotDePasse = !_obscureAncienMotDePasse;
                        });
                      },
                    ),
                    buildPasswordTextField(
                      controller: _nouveauMotDePasseController,
                      labelText: 'Nouveau mot de passe',
                      obscureText: _obscureNouveauMotDePasse,
                      onPressed: () {
                        setState(() {
                          _obscureNouveauMotDePasse =
                              !_obscureNouveauMotDePasse;
                        });
                      },
                    ),
                    buildPasswordTextField(
                      controller: _confirmerMotDePasseController,
                      labelText: 'Confirmer le nouveau mot de passe',
                      obscureText: _obscureConfirmerMotDePasse,
                      onPressed: () {
                        setState(() {
                          _obscureConfirmerMotDePasse =
                              !_obscureConfirmerMotDePasse;
                        });
                      },
                    ),
                  ],
                ),
              ),
              contentPadding: EdgeInsets.zero,
              actions: [
                TextButton(
                  onPressed: () {
                    // Ajoutez une logique pour traiter le changement de mot de passe
                    Navigator.pop(context);
                  },
                   style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  child: const Text('Valider'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                   style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                    
                    ),
                  child: const Text('Annuler'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  TextFormField buildPasswordTextField({
    required TextEditingController controller,
    required String labelText,
    required bool obscureText,
    required VoidCallback onPressed,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF0094ED), width: 10.0),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(12.0),
            right: Radius.circular(12.0),
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF0094ED), width: 10.0),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(12.0),
            right: Radius.circular(12.0),
          ),
        ),
        errorStyle: const TextStyle(color: Colors.white),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 10.0),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(12.0),
            right: Radius.circular(12.0),
          ),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 10.0),
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(12.0),
            right: Radius.circular(12.0),
          ),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.white,
          ),
          onPressed: onPressed,
        ),
      ),
      validator: (value) {
        // Ajoutez une logique de validation pour le mot de passe
        return null;
      },
    );
  }
}
