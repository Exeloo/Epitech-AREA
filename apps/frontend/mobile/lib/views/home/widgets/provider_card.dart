import 'dart:developer';

import 'package:aether/graphql/__generated__/provider.data.gql.dart';
import 'package:aether/views/home/widgets/trigger_action_card.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/colors.dart';
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
                    )
                  : const SizedBox.shrink(),
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
  GgetProviderByIdData_getProviderById? _provider;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _resetState();
    _getProvidersById(context);
  }

  void _resetState() {
    setState(() {
      _provider = null;
      _isLoading = true;
    });
  }

  void _getProvidersById(BuildContext context) async {
    final providerRepository =
        Provider.of<ProviderRepository>(context, listen: false);

    try {
      final response = await providerRepository.getProviderById(
        id: widget.id,
        fetchPolicy: FetchPolicy.NetworkOnly,
      );

      setState(() {
        _provider = response?.getProviderById;
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
        backgroundColor: AppColors.background,
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
            'Erreur : impossible de charger le fournisseur.',
            style: TextStyle(color: AppColors.textPrimary, fontSize: 18),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      appBar: AppBar(
        backgroundColor:
            Color(int.parse(_provider!.color.replaceFirst('#', '0xff'))),
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back,
                      color: AppColors.textPrimary, size: 40),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                const SizedBox(width: 80),
                Text(
                  _provider!.name,
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(1.5, 1.5),
                        blurRadius: 3.0,
                        color: Colors.black,
                      ),
                    ],
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
                color: Color(
                    int.parse(_provider!.color.replaceFirst('#', '0xff'))),
                boxShadow: [
                  BoxShadow(
                    color: Color(
                        int.parse(_provider!.color.replaceFirst('#', '0xff'))),
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
                    child: _provider!.img.isNotEmpty
                        ? SizedBox(
                            width: 220,
                            height: 220,
                            child: Image.network(
                              _provider!.img,
                              fit: BoxFit.fill,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    _provider!.description,
                    style: const TextStyle(
                      fontSize: 24,
                      color: AppColors.textPrimary,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(1.5, 1.5),
                          blurRadius: 3.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(height: 50),
            if (widget.inputType == null ||
                widget.inputType!.isEmpty ||
                widget.inputType == 'trigger')
              Column(
                children: [
                  _buildSectionTitle('Triggers'),
                  const SizedBox(height: 20),
                  Column(
                    children: _provider!.manifest.triggers.map((trigger) {
                      return TriggerActionCard(
                        logoUrl: trigger.img,
                        name: trigger.name,
                        description: trigger.description,
                        color: trigger.color,
                        canClick: widget.canClick,
                        providerId: _provider!.id,
                      );
                    }).toList(),
                  ),
                ],
              ),
            if (widget.inputType == null ||
                widget.inputType!.isEmpty ||
                widget.inputType == 'action')
              Column(
                children: [
                  _buildSectionTitle('Actions'),
                  const SizedBox(height: 20),
                  Column(
                    children: _provider!.manifest.actions.map((actions) {
                      return TriggerActionCard(
                        logoUrl: actions.img,
                        name: actions.name,
                        description: actions.description,
                        color: actions.color,
                        canClick: widget.canClick,
                        providerId: _provider!.id,
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
            color: AppColors.textPrimary,
          ),
        ),
      ),
    );
  }
}
