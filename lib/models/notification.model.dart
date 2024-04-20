class Notification {
  String uid;
  String titre;
  String? contenu;

  Notification({
    required this.uid,
    required this.titre,
    this.contenu,
  });

  factory Notification.fromMap(Map<String, dynamic> data) {
    return Notification(
      uid: data['uid'],
      titre: data['titre'],
      contenu: data['contenu'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'titre': titre,
      'contenu': contenu,
    };
  }
}
