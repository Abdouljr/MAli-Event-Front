class Role {
  String uid;
  String nom;


  Role(
      {required this.uid,
      required this.nom,
});

  factory Role.fromMap(Map<String, dynamic> data) {
    return Role(
      uid: data['uid'],
      nom: data['nom'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'nom': nom,
    };
  }
}
