import 'dart:developer';

import 'package:aether/graphql/__generated__/provider.data.gql.dart';
import 'package:aether/views/home/widgets/trigger_action_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../modules/graphql/repository/provider_repository.dart';

class ProviderCard extends StatelessWidget {
  final String? logoUrl;
  final String providerName;
  final int id;
  final String color;
  final bool canClick;
  final String? inputType;

  const ProviderCard({
    required this.logoUrl,
    required this.providerName,
    required this.id,
    required this.color,
    required this.canClick,
    super.key,
    this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProviderDescription(
              id: id,
              canClick: canClick,
              inputType: inputType,
            ),
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
              child: logoUrl != null && logoUrl!.isNotEmpty
                  ? Image.network(
                logoUrl!,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.image_not_supported,
                    color: Colors.grey,
                    size: 48,
                  );
                },
              )
                  : const Icon(
                Icons.image_not_supported,
                color: Colors.grey,
                size: 48,
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
  final bool canClick;
  final String? inputType;

  const ProviderDescription({
    required this.id,
    super.key,
    required this.canClick,
    this.inputType,
  });

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
    final providerRepository =
    Provider.of<ProviderRepository>(context, listen: false);

    try {
      final response = await providerRepository.getProviderById(id: widget.id);
      log(widget.id as String);
      if (response == null || response.getProviderById == null) {
        log('Response or provider is null');
        setState(() {
          _isLoading = false;
        });
        return;
      }
      setState(() {
        _provider = response.getProviderById;
        print('Provider by id ${_provider.manifest.triggers}');
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

    if (_provider == null) {
      return const Scaffold(
        backgroundColor: Color(0xff1B1B1B),
        body: Center(
          child: Text(
            'Erreur : données non chargées.',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      appBar: AppBar(
        backgroundColor:
        Color(int.parse(_provider.color.replaceFirst('#', '0xff'))),
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back,
                      color: Colors.white, size: 40),
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
                color:
                Color(int.parse(_provider.color.replaceFirst('#', '0xff'))),
                boxShadow: [
                  BoxShadow(
                    color: Color(
                        int.parse(_provider.color.replaceFirst('#', '0xff'))),
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: _provider.img.isNotEmpty
                        ? Image.network(
                      _provider.img,
                      fit: BoxFit.fitWidth,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.image_not_supported,
                          color: Colors.grey,
                          size: 100,
                        );
                      },
                    )
                        : const Icon(
                      Icons.image_not_supported,
                      color: Colors.grey,
                      size: 100,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    _provider.description,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(height: 50),
            if (widget.inputType == null || widget.inputType!.isEmpty || widget.inputType == 'trigger')
              Column(
                children: [
                  _buildSectionTitle('Triggers'),
                  const SizedBox(height: 20),
                  Column(
                    children: _provider.manifest.triggers.map((trigger) {
                      return TriggerActionCard(
                        logoUrl: _provider.img,
                        name: trigger.name,
                        description: trigger.description,
                        color: trigger.color,
                        canClick: widget.canClick,
                        providerId: _provider.id,
                      );
                    }).toList(),
                  ),
                ],
              ),
            if (widget.inputType == null || widget.inputType!.isEmpty || widget.inputType == 'action')
              Column(
                children: [
                  _buildSectionTitle('Actions'),
                  const SizedBox(height: 20),
                  Column(
                    children: _provider.manifest.actions.map((actions) {
                      return TriggerActionCard(
                        logoUrl: _provider.img,
                        name: actions.name,
                        description: actions.description,
                        color: actions.color,
                        canClick: widget.canClick,
                        providerId: _provider.id,
                      );
                    }).toList(),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}