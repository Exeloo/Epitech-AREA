import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mobile/widgets/homeAppBar.dart';

import '../widgets/card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Le nombre d'onglets
      child: Scaffold(
        appBar: const MyHomeAppBar(), // Utilisation de l'AppBar personnalisée
        body: const TabBarView(
          children: [
            AllContent(), // Vue pour "All"
            Center(child: Text('Providers Content')), // Vue pour "Providers"
          ],
        ),
      ),
    );
  }
}

class AllContent extends StatelessWidget {
  const AllContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Get Started !",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            // Espacement entre le texte et SearchBar
            SizedBox(
              height: 50, // Hauteur explicite pour SearchBar
              child: SearchBar(
                leading: Row(
                  children: [
                    const SizedBox(width: 8), // Espace avant l'icône
                    SvgPicture.asset(
                      'assets/icon/loupe.svg',
                      height: 24,
                      width: 24,
                      color: const Color(0x83f6ecec),
                    ),
                    const SizedBox(width: 12),
                  ],
                ),
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xff3D3D3D)),
                hintText: 'Explorer',
                hintStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 20, color: Color(0x83f6ecec)),
                ),
              ),
            ),

            const SizedBox(height: 16),
            // Espacement entre les widgets
            Expanded(
              // MyCard occupera l'espace restant
              child: MyCard(backgroundColor: const Color(0xff1B1B1B)),
            ),
          ],
        ),
      ),
    );
  }
}
