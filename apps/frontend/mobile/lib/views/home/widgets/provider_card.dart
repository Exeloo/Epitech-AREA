import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../modules/graphql/repository/provider_repository.dart';

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
    Provider.of<ProviderRepository>(context, listen: false);

    try {
      //final response = await providerRepository.getProviderById(id: widget.id);
    } catch (e) {
      log('An error occurred: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      appBar: AppBar(
        backgroundColor: const Color(0xff1B1B1B),
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
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://www.minuitdouze.com/wp-content/uploads/discord-logo.jpg',
                fit: BoxFit.fitWidth,
              ),

              const SizedBox(height: 16),
              const Text(
                'Voici une description détaillée de ce que fait cette application. Elle vous permet de gérer différents paramètres et de configurer des actions personnalisées basées sur des déclencheurs spécifiques.',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Triggers :',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('- Trigger 1: Événement X déclenche l\'action Y', style: TextStyle(color: Colors.white)),
                  Text('- Trigger 2: Action Z est activée quand un utilisateur fait ceci', style: TextStyle(color: Colors.white)),
                  Text('- Trigger 3: Quand une condition est remplie, l\'action suivante se produit', style: TextStyle(color: Colors.white)),
                ],
              ),

              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Actions:',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('- Action 1: Exécuter un script', style: TextStyle(color: Colors.white)),
                  Text('- Action 2: Afficher un message à l\'utilisateur', style: TextStyle(color: Colors.white)),
                  Text('- Action 3: Envoyer une notification', style: TextStyle(color: Colors.white)),
                  Text('- Action 1: Exécuter un script', style: TextStyle(color: Colors.white)),
                  Text('- Action 2: Afficher un message à l\'utilisateur', style: TextStyle(color: Colors.white)),
                  Text('- Action 3: Envoyer une notification', style: TextStyle(color: Colors.white)),
                  Text('- Action 1: Exécuter un script', style: TextStyle(color: Colors.white)),
                  Text('- Action 2: Afficher un message à l\'utilisateur', style: TextStyle(color: Colors.white)),
                  Text('- Action 3: Envoyer une notification', style: TextStyle(color: Colors.white)),
                  Text('- Action 1: Exécuter un script', style: TextStyle(color: Colors.white)),
                  Text('- Action 2: Afficher un message à l\'utilisateur', style: TextStyle(color: Colors.white)),
                  Text('- Action 3: Envoyer une notification', style: TextStyle(color: Colors.white)),Text('- Action 1: Exécuter un script', style: TextStyle(color: Colors.white)),
                  Text('- Action 2: Afficher un message à l\'utilisateur', style: TextStyle(color: Colors.white)),
                  Text('- Action 3: Envoyer une notification', style: TextStyle(color: Colors.white)),Text('- Action 1: Exécuter un script', style: TextStyle(color: Colors.white)),
                  Text('- Action 2: Afficher un message à l\'utilisateur', style: TextStyle(color: Colors.white)),
                  Text('- Action 3: Envoyer une notification', style: TextStyle(color: Colors.white)),Text('- Action 1: Exécuter un script', style: TextStyle(color: Colors.white)),
                  Text('- Action 2: Afficher un message à l\'utilisateur', style: TextStyle(color: Colors.white)),
                  Text('- Action 3: Envoyer une notification', style: TextStyle(color: Colors.white)),Text('- Action 1: Exécuter un script', style: TextStyle(color: Colors.white)),
                  Text('- Action 2: Afficher un message à l\'utilisateur', style: TextStyle(color: Colors.white)),
                  Text('- Action 3: Envoyer une notification', style: TextStyle(color: Colors.white)),Text('- Action 1: Exécuter un script', style: TextStyle(color: Colors.white)),
                  Text('- Action 2: Afficher un message à l\'utilisateur', style: TextStyle(color: Colors.white)),
                  Text('- Action 3: Envoyer une notification', style: TextStyle(color: Colors.white)),Text('- Action 1: Exécuter un script', style: TextStyle(color: Colors.white)),
                  Text('- Action 2: Afficher un message à l\'utilisateur', style: TextStyle(color: Colors.white)),
                  Text('- Action 3: Envoyer une notification', style: TextStyle(color: Colors.white)),Text('- Action 1: Exécuter un script', style: TextStyle(color: Colors.white)),
                  Text('- Action 2: Afficher un message à l\'utilisateur', style: TextStyle(color: Colors.white)),
                  Text('- Action 3: Envoyer une notification', style: TextStyle(color: Colors.white)),Text('- Action 1: Exécuter un script', style: TextStyle(color: Colors.white)),
                  Text('- Action 2: Afficher un message à l\'utilisateur', style: TextStyle(color: Colors.white)),
                  Text('- Action 3: Envoyer une notification', style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}