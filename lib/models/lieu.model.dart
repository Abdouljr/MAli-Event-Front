class Lieu {
  String uid;
  String nomLieu;


  Lieu(
      {required this.uid,
      required this.nomLieu,
});

  factory Lieu.fromMap(Map<String, dynamic> data) {
    return Lieu(
      uid: data['uid'],
      nomLieu: data['nomLieu'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'nomLieu': nomLieu,
    };
  }
}
