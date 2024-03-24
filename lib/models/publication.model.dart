import 'package:cloud_firestore/cloud_firestore.dart';

class Publication {
  String uid;
  String image;
  String description;
  Timestamp? date;

  Publication({
    required this.uid,
    required this.image,
    required this.description,
    required this.date,
  });

  factory Publication.fromMap(Map<String, dynamic> data) {
    return Publication(
      uid: data['uid'],
      image: data['image'] ?? '',
      description: data['description'] ?? '',
      date: data['date'] ?? Timestamp.now(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'image': image,
      'description': description,
    };
  }
}
