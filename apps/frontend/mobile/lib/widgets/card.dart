import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCard extends StatelessWidget {
  final Color backgroundColor;
  final String text;

  const MyCard({Key? key, required this.backgroundColor, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // Hauteur fixe
      width: double.infinity, // Largeur ajustée à l'écran
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Positioned(
            bottom: 8, // Positionné en bas
            left: 8, // Positionné à droite
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 8, // Positionné en bas
            right: 50, // Positionné à droite
            child: SvgPicture.asset('assets/icon/utilisateur.svg',
                width: 24, height: 24, color: Colors.white),
          ),
          Positioned(
            top: 8, // Positionné en bas
            right: 8, // Positionné à droite
            child: Text(
              "2.5M",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
