class Utilisateur {
  String id;
  String nom;
  String email;

  Utilisateur({required this.id, required this.nom, required this.email});

  factory Utilisateur.fromMap(Map<String, dynamic> data) {
    return Utilisateur(
      id: data['id'],
      nom: data['nom'] ?? '',
      email: data['email'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nom': nom,
      'email': email,
    };
  }
}
