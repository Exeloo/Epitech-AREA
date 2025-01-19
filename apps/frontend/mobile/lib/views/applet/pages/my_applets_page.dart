import 'package:aether/graphql/__generated__/applet.data.gql.dart';
import 'package:aether/graphql/graphql_client.dart';
import 'package:aether/modules/graphql/repository/applet_repository.dart';
import 'package:aether/views/home/widgets/applet_card.dart';
import 'package:ferry/ferry.dart';
import 'package:flutter/material.dart';

import '../../../config/colors.dart';
import 'applet_creation.dart';
import 'applet_detail_page.dart';

class MyAppletsPage extends StatefulWidget {
  const MyAppletsPage({super.key});

  @override
  State<MyAppletsPage> createState() => _MyAppletsPageState();
}

class _MyAppletsPageState extends State<MyAppletsPage> {
  late AppletRepository appletRepository;
  late Future<List<GgetAllAppletsData_getAllApplets>?> appletsFuture;

  @override
  void initState() {
    super.initState();
    final client = GraphQlClient().client;
    appletRepository = AppletRepository(client: client);
    appletsFuture =
        appletRepository.getAllApplets(fetchPolicy: FetchPolicy.NetworkOnly);
  }

  void _onAppletTap(GgetAllAppletsData_getAllApplets applet) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AppletDetailPage(applet: applet),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: FutureBuilder<List<GgetAllAppletsData_getAllApplets>?>(
        future: appletsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      "You haven't created an applet yet !",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.secondary,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => const AppletCreation(),
                          ),
                        );
                      },
                      child: const Text(
                        'Get Started',
                        style: TextStyle(color: AppColors.textPrimary, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }

          final applets = snapshot.data!;

          return ListView.builder(
            itemCount: applets.length,
            itemBuilder: (context, index) {
              final applet = applets[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyCard(
                  backgroundColor: Colors.blue,
                  text: applet.name,
                  onTap: () => _onAppletTap(applet),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
