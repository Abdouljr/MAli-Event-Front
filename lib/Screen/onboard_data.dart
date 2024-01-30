import 'package:flutter/material.dart';

class OnBoarding {
  final String title;
  final String image;
  // ignore: prefer_typing_uninitialized_variables
  final icons;

  OnBoarding({
    required this.title,
    required this.image,
    required this.icons,
  });

}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Ne rater plus un évènement au Mali',
    image: 'assets/images/image.png',
    icons: Icons.arrow_forward,   
  ),
  OnBoarding(
    title: 'Soyez à jour concernant tous les concerts ',
    image: 'assets/images/image.png',
    icons:
      Icons.arrow_forward,
      
  ),

  OnBoarding(
    title: 'Suivez les actualités de vos artistes préferés',
    image: 'assets/images/image.png',
    icons: 
      Icons.check,
      
  ),
];
