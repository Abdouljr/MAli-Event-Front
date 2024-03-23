class TypeEvenement {
  String uid;
  String nomType;


  TypeEvenement(
      {required this.uid,
      required this.nomType,
});

  factory TypeEvenement.fromMap(Map<String, dynamic> data) {
    return TypeEvenement(
      uid: data['uid'],
      nomType: data['nomType'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'nomType': nomType,
    };
  }
}
