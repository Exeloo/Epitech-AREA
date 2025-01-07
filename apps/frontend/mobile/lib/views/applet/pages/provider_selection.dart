import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../graphql/__generated__/provider.data.gql.dart';
import '../../../modules/graphql/repository/provider_repository.dart';
import '../widgets/applet_provider_card.dart';

class ProviderSelection extends StatefulWidget {
  const ProviderSelection({super.key});

  @override
  State<ProviderSelection> createState() => _ProviderSelectionState();
}

class _ProviderSelectionState extends State<ProviderSelection> {
  late BuiltList<GgetAllProvidersData_getAllProviders>? _providers;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _getAllProviders(context);
  }

  void _getAllProviders(BuildContext context) async {
    final providerRepository =
    Provider.of<ProviderRepository>(context, listen: false);

    try {
      final response = await providerRepository.getAllProviders();
      setState(() {
        _providers = response?.getAllProviders;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      log('An error occurred: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Selection'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: const Color(0xff1B1B1B),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: const Color(0xff1B1B1B),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
        padding:
        const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 3 / 2,
        ),
        itemCount: _providers?.length ?? 0,
        itemBuilder: (context, index) {
          final provider = _providers![index];
          return AppletProviderCard(
            logoUrl: provider.img,
            providerName: provider.name,
            id: provider.id,
            color: provider.color,
          );
        },
      ),
    );
  }
}
