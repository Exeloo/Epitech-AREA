import 'dart:developer';

import 'package:flutter/material.dart';

class ProviderCard extends StatelessWidget {
  final String logoUrl;
  final String providerName;
  final int id;
  final String color;

  const ProviderCard({
    required this.logoUrl,
    required this.providerName,
    required this.id,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProviderDescription(id: id),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        color: Color(int.parse(color.replaceFirst('#', '0xff'))),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 80,
            width: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                logoUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProviderDescription extends StatefulWidget {
  final int id;

  const ProviderDescription({required this.id, super.key});

  @override
  ProviderDescriptionState createState() => ProviderDescriptionState();
}

class ProviderDescriptionState extends State<ProviderDescription> {
  @override
  void initState() {
    super.initState();
    _getProvidersById(context);
  }

  void _getProvidersById(BuildContext context) async {
    try {
      // final response = await providerRepository.getProviderById(id: widget.id);
    } catch (e) {
      log('An error occurred: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      appBar: AppBar(
        backgroundColor: const Color(0xff5865f2),
        title: const Center(
          child: Text(
            'Discord',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white, size: 40),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff5865f2), Color(0xff1B1B1B)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    'https://darkanddarker.wiki.spellsandguns.com/images/thumb/1/15/Discord_logo.webp/213px-Discord_logo.webp.png',
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Voici une description détaillée de ce que fait cette application. Elle vous permet de gérer différents paramètres et de configurer des actions personnalisées basées sur des déclencheurs spécifiques.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle('Triggers'),
            const SizedBox(height: 8),
            _buildSectionContent([
              'Trigger 1: Événement X déclenche l\'action Y',
              'Trigger 2: Action Z est activée quand un utilisateur fait ceci',
              'Trigger 3: Quand une condition est remplie, l\'action suivante se produit',
            ]),
            const SizedBox(height: 16),
            _buildSectionTitle('Actions'),
            const SizedBox(height: 8),
            _buildSectionContent([
              'Action 1: Exécuter un script',
              'Action 2: Afficher un message à l\'utilisateur',
              'Action 3: Envoyer une notification',
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Center(
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildSectionContent(List<String> content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: content
          .map((item) => Text(
                '- $item',
                style: const TextStyle(color: Colors.white),
              ))
          .toList(),
    );
  }
}
