import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/card.dart';
import 'package:mobile/widgets/homeAppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Nombre d'onglets
      child: Scaffold(
        appBar: const MyHomeAppBar(),
        body: const TabBarView(
          children: [
            AllContent(),
            ProvidersContent(),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Text(
            "Get Started !",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // Espacement entre texte et barre de recherche
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
          const SizedBox(height: 50),
          // Espacement entre widgets
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: 10, // Nombre de cartes
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: MyCard(
                  backgroundColor: Colors.lightBlueAccent,
                  text: 'Amazon to X',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProvidersContent extends StatelessWidget {
  const ProvidersContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          // Espacement entre widgets
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: List.generate(
                10, // Nombre total de cartes
                (index) => MyCard(
                  backgroundColor: Colors.lightBlueAccent,
                  text: 'Discord',
                ),
              ),
              crossAxisCount: 2,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
