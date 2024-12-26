import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile/modules/graphql/repository/provider_repository.dart';
import 'package:mobile/views/home/widgets/provider_card.dart';
import '../widgets/applet_card.dart';
import 'package:mobile/views/home/widgets/home_app_bar.dart';
import 'package:provider/provider.dart';

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
              backgroundColor:
                  WidgetStateProperty.all(const Color(0xff3D3D3D)),
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
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: MyCard(
                  backgroundColor: Colors.lightBlueAccent,
                  text: 'Amazon to X',
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
  List<dynamic> _providers = [];
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
      log('response provider $response');
      setState(() {
        _providers = response as List;
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 3 / 2,
        ),
        itemCount: _providers.length,
        itemBuilder: (context, index) {
          final provider = _providers[index];
          log('provider name $provider.name');
          return ProviderCard(
            logoUrl: provider.img ?? '',
            providerName: provider.name,
          );
        },
      ),
    );
  }
}
