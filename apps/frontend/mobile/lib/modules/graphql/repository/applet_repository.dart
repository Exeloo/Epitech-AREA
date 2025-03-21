import 'dart:convert';
import 'dart:developer';

import 'package:aether/graphql/__generated__/applet.data.gql.dart';
import 'package:aether/graphql/__generated__/applet.req.gql.dart';
import 'package:aether/graphql/__generated__/schema.schema.gql.dart';
import 'package:ferry/ferry.dart';

class AppletRepository {
  late Client client;

  void updateClient(Client newClient) {
    client = newClient;
  }

  AppletRepository({required this.client});

  Future<GcreateAppletData?> createApplet({
    required String name,
    required String description,
    required List<Map<String, dynamic>> triggerNodesData,
  }) async {
    try {
      final triggerNodes =
          triggerNodesData.map((nodeData) => _createNode(nodeData)).toList();

      final createAppletReq = GcreateAppletReq((b) => b
        ..vars.data.name = name
        ..vars.data.description = description
        ..vars.data.triggerNodes.replace(triggerNodes));

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

  Future<GupdateAppletData?> updateApplet(
      {required String name,
      required String description,
      required List<Map<String, dynamic>> triggerNodesData,
      required id}) async {
    try {
      final triggerNodes =
          triggerNodesData.map((nodeData) => _updateNode(nodeData)).toList();

      final updateAppletReq = GupdateAppletReq((b) => b
        ..vars.data.name = name
        ..vars.data.description = description
        ..vars.data.triggerNodes.replace(triggerNodes)
        ..vars.id = id);

      final response = await client.request(updateAppletReq).first;

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
      log('UpdateApplet error: $e');
      rethrow;
    }
  }

  Future<GdeleteAppletData?> deleteApplet({required id}) async {
    try {
      final deleteAppletReq = GdeleteAppletReq((b) => b..vars.id = id);

      final response =
          await client.request(deleteAppletReq as OperationRequest).first;

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
      log('UpdateApplet error: $e');
      rethrow;
    }
  }

  GAppletNodeCreateInput _createNode(Map<String, dynamic> nodeData) {
    return GAppletNodeCreateInput((b) => b
      ..providerId = nodeData['providerId']
      ..actionId = nodeData['actionId']
      ..input.replace(_mapInput(nodeData['input']))
      ..next.replace((nodeData['next'] as List<dynamic>?)
              ?.map((nextNode) => _createNode(nextNode as Map<String, dynamic>))
              .toList() ??
          []));
  }

  GJSON _mapInput(dynamic inputData) {
    if (inputData is Map<String, dynamic>) {
      return GJSON(jsonEncode(inputData));
    } else if (inputData is String) {
      return GJSON(inputData);
    } else {
      throw ArgumentError('Unsupported input type for GJSON: $inputData');
    }
  }

  GAppletNodeUpdateInput _updateNode(Map<String, dynamic> nodeData) {
    return GAppletNodeUpdateInput((b) => b
      ..providerId = nodeData['providerId']
      ..actionId = nodeData['actionId']
      ..input.replace(_mapInput(nodeData['input']))
      ..next.replace((nodeData['next'] as List<dynamic>?)
              ?.map((nextNode) => _updateNode(nextNode as Map<String, dynamic>))
              .toList() ??
          []));
  }

  Future<List<GgetAllAppletsData_getAllApplets>?> getAllApplets({
    FetchPolicy fetchPolicy = FetchPolicy.CacheAndNetwork,
  }) async {
    final getAllAppletsReq =
        GgetAllAppletsReq((b) => b..fetchPolicy = fetchPolicy);
    try {
      final response = await client.request(getAllAppletsReq).first;

      if (response.loading) {
        log('Loading...');
        return null;
      } else if (response.hasErrors) {
        log('Errors: ${response.graphqlErrors}');
        return null;
      } else {
        log('Response: ${response.data}');
        return response.data?.getAllApplets.toList();
      }
    } catch (e) {
      log('GetAllApplets error: $e');
      rethrow;
    }
  }

  Future<GgetAppletByIdData_getAppletById?> getAppletById(int id) async {
    final getAppletByIdReq = GgetAppletByIdReq((b) => b..vars.id = id);
    try {
      final response = await client.request(getAppletByIdReq).first;

      if (response.loading) {
        log('Loading...');
        return null;
      } else if (response.hasErrors) {
        log('Errors: ${response.graphqlErrors}');
        return null;
      } else {
        log('Response: ${response.data}');
        return response.data?.getAppletById;
      }
    } catch (e) {
      log('GetAppletById error: $e');
      rethrow;
    }
  }

  Future<GgetAppletNodeByIdData_getAppletNodeById?> getAppletNodeById(
      int id) async {
    final getAppletNodeByIdReq = GgetAppletNodeByIdReq((b) => b..vars.id = id);
    try {
      final response = await client.request(getAppletNodeByIdReq).first;

      if (response.loading) {
        log('Loading...');
        return null;
      } else if (response.hasErrors) {
        log('Errors: ${response.graphqlErrors}');
        return null;
      } else {
        log('Response: ${response.data}');
        return response.data?.getAppletNodeById;
      }
    } catch (e) {
      log('GetAppletNodeById error: $e');
      rethrow;
    }
  }
}
