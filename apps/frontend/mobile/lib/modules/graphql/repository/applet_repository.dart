import 'dart:developer';

import 'package:ferry/ferry.dart';
import 'package:mobile/graphql/__generated__/applet.data.gql.dart';
import 'package:mobile/graphql/__generated__/applet.req.gql.dart';
import 'package:mobile/graphql/__generated__/schema.schema.gql.dart';

class AppletRepository {
  final Client client;

  AppletRepository({required this.client});

  Future<GcreateAppletData?> createApplet({
    required String name,
    required String description,
    required List<GAppletNodeCreateInput> triggerNodes,
  }) async {
    final createAppletReq = GcreateAppletReq((b) => b
      ..vars.data.name = name
      ..vars.data.description = description
      ..vars.data.triggerNodes.replace(triggerNodes));
    try {
      final response = await client.request(createAppletReq).first;

      if (response.loading) {
        log('Loading...');
        return null;
      } else if (response.hasErrors) {
        log('Errors: ${response.graphqlErrors}');
        return null;
      } else {
        log('Response: ${response.data}');
        return response.data;
      }
    } catch (e) {
      log('CreateApplet error: $e');
      rethrow;
    }
  }
}