import 'package:flutter/material.dart';

import '../../../config/colors.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('FAQ'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 30,
            fontWeight: FontWeight.bold),
        backgroundColor: AppColors.background,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          FAQItem(
            question: 'Qu’est-ce qu’un applet dans Aether ?',
            answer: '''
Un applet est une action automatisée que vous pouvez créer dans Aether. Chaque applet contient :  
- Un déclencheur (“If This”) : Une condition qui active l’applet.  
- Une ou plusieurs actions (“Then That”) : Ce qui se passe lorsque la condition est remplie.  

Vous pouvez gérer vos applets directement depuis la page dédiée après votre connexion.
    ''',
          ),
          FAQItem(
            question: 'Quels services sont disponibles sur Aether ?',
            answer: '''
Aether prend en charge 14 services, notamment :  
- Discord, Twitch, Google, GitHub, Microsoft, LinkedIn, etc.  

Vous pouvez cliquer sur un service pour explorer ses déclencheurs et actions associés.
    ''',
          ),
          FAQItem(
            question: 'Comment créer un applet ?',
            answer: '''
Pour créer un applet :  
1. Cliquez sur le bouton “Créer un applet”.  
2. Configurez les déclencheurs (“If This”) et les actions (“Then That”) en choisissant un service et en fournissant les informations nécessaires.  
3. Donnez un nom et une description à l’applet, puis validez.
    ''',
          ),
          FAQItem(
            question: 'Comment utiliser les “ingrédients” dans les actions ?',
            answer: '''
Les ingrédients sont des informations provenant des déclencheurs ou actions précédentes que vous pouvez utiliser dans une action.  

Exemple :
Si le déclencheur est un message Discord, vous pouvez utiliser le nom de l’auteur du message dans l’action avec la syntaxe :  
`[0]{author.username}`.  
- `0` correspond au déclencheur.  
- `author.username` est une donnée du déclencheur.
    ''',
          ),
          FAQItem(
            question: 'Comment puis-je modifier un applet existant ?',
            answer: '''
Après avoir créé un applet, vous pouvez cliquer dessus pour :  
- Accéder à ses détails.  
- Le modifier.  
- Ajuster ses paramètres.
    ''',
          ),
        ],
      ),
    );
  }
}

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  const FAQItem({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  FAQItemState createState() => FAQItemState();
}

class FAQItemState extends State<FAQItem> {
  bool _isExpanded = false;

  void _toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade700,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          ListTile(
            title: Text(
              widget.question,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                  fontSize: 25),
            ),
            trailing: Icon(
              _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              color: AppColors.textPrimary,
            ),
            onTap: _toggleExpansion,
          ),
          if (_isExpanded)
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                widget.answer,
                style:
                    const TextStyle(fontSize: 18, color: AppColors.textPrimary),
              ),
            ),
        ],
      ),
    );
  }
}
