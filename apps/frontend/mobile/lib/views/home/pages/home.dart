import 'dart:developer';

import 'package:aether/graphql/__generated__/provider.data.gql.dart';
import 'package:aether/modules/graphql/repository/provider_repository.dart';
import 'package:aether/views/home/widgets/home_app_bar.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../widgets/applet_card.dart';
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
            AllContent(),
            ProvidersContent(),
          ],
        ),
      ),
    );
  }
}

class AllContent extends StatelessWidget {
  const AllContent({super.key});

  void _onAppletTap(BuildContext context, String appletName) {
    // Navigate to the detail page or perform any action on tap
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AppletDetailPage(appletName: appletName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          const Text(
            "Get Started !",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: SearchBar(
              leading: Row(
                children: [
                  const SizedBox(width: 8),
                  SvgPicture.asset(
                    'assets/icon/loupe.svg',
                    height: 24,
                    width: 24,
                    color: const Color(0x83f6ecec),
                  ),
                  const SizedBox(width: 12),
                ],
              ),
              backgroundColor: WidgetStateProperty.all(const Color(0xff3D3D3D)),
              hintText: 'Explorer',
              hintStyle: WidgetStateProperty.all(
                const TextStyle(fontSize: 20, color: Color(0x83f6ecec)),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              itemCount: 10,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: MyCard(
                  backgroundColor: Colors.lightBlueAccent,
                  text: 'Amazon to X',
                  onTap: () => _onAppletTap(context, 'Amazon to X'),
                ),
              ),
            ),
          ),
        ],
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
                );
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
