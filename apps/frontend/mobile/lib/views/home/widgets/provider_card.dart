import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile/graphql/__generated__/provider.data.gql.dart';
import 'package:mobile/views/auth/pages/discord_auth.dart';
import 'package:mobile/views/home/widgets/trigger_action_card.dart';
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

class ProviderDescription extends StatefulWidget {
  final int id;

  const ProviderDescription({required this.id, super.key});

  @override
  ProviderDescriptionState createState() => ProviderDescriptionState();
}
class ProviderDescriptionState extends State<ProviderDescription> {
  late GgetProviderByIdData_getProviderById _provider;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _getProvidersById(context);
  }

  void _getProvidersById(BuildContext context) async {
    final providerRepository = Provider.of<ProviderRepository>(context, listen: false);

    try {
      final response = await providerRepository.getProviderById(id: widget.id);
      setState(() {
        _provider = response!.getProviderById;
        _isLoading = false;
      });
    } catch (e) {
      log('An error occurred: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: Color(0xff1B1B1B),
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      appBar: AppBar(
        backgroundColor: Color(int.parse(_provider.color.replaceFirst('#', '0xff'))),
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white, size: 40),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                const SizedBox(width: 80),
                Text(
                  _provider.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(int.parse(_provider.color.replaceFirst('#', '0xff'))),
                    const Color(0xff1B1B1B)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    _provider.img,
                    fit: BoxFit.fitWidth,
                    color: Colors.white,
                  ),
                  Text(
                    _provider.description,
                    style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff8E44AD)),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                            const DiscordAuth(),
                          ),
                              (Route<dynamic> route) => false,
                        );
                      },
                      child: const Text('Login',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle('Triggers'),
            const SizedBox(height: 8),
            Column(
              children: _provider.manifest.triggers.map((trigger) {
                const SizedBox(height: 16);
                return TriggerActionCard(
                  logoUrl: _provider.img,
                  name: trigger.name,
                  description: trigger.description,
                  color: trigger.color,
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            _buildSectionTitle('Actions'),
            const SizedBox(height: 8),
            Column(
              children: _provider.manifest.actions.map((actions) {
                const SizedBox(height: 16);
                return TriggerActionCard(
                  logoUrl: _provider.img,
                  name: actions.name,
                  description: actions.description,
                  color: actions.color,
                );
              }).toList(),
            ),
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
}
