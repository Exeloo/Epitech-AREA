import 'dart:developer';

import 'package:aether/views/home/widgets/provider_card.dart';
import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/colors.dart';
import '../../../graphql/__generated__/provider.data.gql.dart';
import '../../../modules/graphql/repository/provider_repository.dart';

class ProviderSelection extends StatefulWidget {
  final String? inputType;
  const ProviderSelection({super.key, this.inputType});

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
      final response = await providerRepository.getAllProviders(
        fetchPolicy: FetchPolicy.NetworkOnly,
      );
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
          color: AppColors.textPrimary,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: AppColors.background,
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.textPrimary),
      ),
      backgroundColor: AppColors.background,
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
                return ProviderCard(
                  logoUrl: provider.img,
                  providerName: provider.name,
                  id: provider.id,
                  color: provider.color,
                  canClick: true,
                  inputType: widget.inputType,
                );
              },
            ),
    );
  }
}
