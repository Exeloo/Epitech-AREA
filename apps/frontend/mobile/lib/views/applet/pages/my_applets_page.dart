import 'package:flutter/material.dart';
// implementer les imports necessaires
import 'package:mobile/views/applet/widgets/applet_card.dart';

class MyAppletsPage extends StatefulWidget {
  const MyAppletsPage({Key? key}) : super(key: key);

  @override
  _MyAppletsPageState createState() => _MyAppletsPageState();
}

class _MyAppletsPageState extends State<MyAppletsPage> {
  late Client client;

  @override
  void initState() {
    super.initState();
    client = GraphQlClient().client;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Applets'),
      ),
      body: Operation(
        client: client,
        operationRequest: GGetAllAppletsReq(),
        builder: (context,
            OperationResponse<GGetAllAppletsData, GGetAllAppletsVars>? response,
            error) {
          if (response!.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (response.hasErrors) {
            return Center(
                child: Text(
                    'Error: ${response.graphqlErrors?.map((e) => e.message).join(', ')}'));
          }

          final applets = response.data?.getAllApplets ?? [];

          return ListView.builder(
            itemCount: applets.length,
            itemBuilder: (context, index) {
              final applet = applets[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyCard(
                  backgroundColor: Colors.blue,
                  text: applet.name,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
