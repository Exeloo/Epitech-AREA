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

class ProviderDescription extends StatelessWidget {
  final int id;

  const ProviderDescription({required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      appBar: AppBar(
        backgroundColor: const Color(0xff1B1B1B),
        iconTheme: const IconThemeData(color: Colors.white, size: 50),
      ),
      body: Center(
        child: Text(
          'Details of Provider with ID: $id',
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
