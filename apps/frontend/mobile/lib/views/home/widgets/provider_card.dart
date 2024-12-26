import 'package:flutter/material.dart';

class ProviderCard extends StatelessWidget {
  final String logoUrl;
  final String providerName;

  ProviderCard({
    required this.logoUrl,
    required this.providerName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 300,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.amber,
            image: DecorationImage(
              image: NetworkImage(logoUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}