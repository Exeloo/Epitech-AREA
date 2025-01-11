import 'package:aether/views/applet/pages/applet_creation.dart';
import 'package:flutter/material.dart';

class AppletProviderCard extends StatelessWidget {
  final String logoUrl;
  final String providerName;
  final int id;
  final String color;

  const AppletProviderCard({
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
            builder: (context) => AppletCreation(providerId: id),
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
                fit: BoxFit.contain,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
