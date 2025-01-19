import 'dart:developer';

import 'package:aether/graphql/__generated__/provider.data.gql.dart';
import 'package:aether/modules/graphql/repository/provider_repository.dart';
import 'package:aether/views/applet/pages/my_applets_page.dart';
import 'package:aether/views/home/widgets/home_app_bar.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/provider_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: MyHomeAppBar(),
        body: TabBarView(
          children: [
            MyAppletsPage(),
            ProvidersContent(),
          ],
        ),
      ),
    );
  }
}

class ProvidersContent extends StatefulWidget {
  const ProvidersContent({super.key});

  @override
  State<ProvidersContent> createState() => _ProvidersContentState();
}

class _ProvidersContentState extends State<ProvidersContent> {
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
                return ProviderCard(
                    logoUrl: provider.img,
                    providerName: provider.name,
                    id: provider.id,
                    color: provider.color,
                    canClick: false,
                    onHome: true);
              },
            ),
    );
  }
}

class AppletDetailPage extends StatelessWidget {
  final String appletName;

  const AppletDetailPage({super.key, required this.appletName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appletName),
      ),
      body: Center(
        child: Text('Details for $appletName'),
      ),
    );
  }
}
