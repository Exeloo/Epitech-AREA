import 'dart:convert';
import 'dart:developer';

import 'package:aether/views/applet/models/applet_data.dart';
import 'package:aether/views/applet/pages/applet_creation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/colors.dart';
import '../../../graphql/__generated__/provider.data.gql.dart';
import '../../../modules/graphql/repository/provider_repository.dart';

class TriggerActionPage extends StatefulWidget {
  final int id;
  final String name;
  final Future<void> Function(BuildContext)? onTap;

  const TriggerActionPage(
      {required this.id, super.key, this.onTap, required this.name});

  @override
  TriggerActionPageState createState() => TriggerActionPageState();
}

class TriggerActionPageState extends State<TriggerActionPage> {
  late GgetProviderByIdData_getProviderById _provider;
  bool _isLoading = true;
  final Map<String, TextEditingController> _controllers = {};

  @override
  void initState() {
    super.initState();
    _getProvidersById(context);
  }

  void _getProvidersById(BuildContext context) async {
    final providerRepository =
        Provider.of<ProviderRepository>(context, listen: false);

    try {
      final response = await providerRepository.getProviderById(id: widget.id);
      if (mounted) {
        setState(() {
          _provider = response!.getProviderById;
          _isLoading = false;
        });
        _initializeControllers(_getInputs());
      }
    } catch (e) {
      log('An error occurred: $e');
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _initializeControllers(Map<String, dynamic> inputs) {
    for (var key in inputs.keys) {
      _controllers[key] = TextEditingController(text: '');
    }
    if (mounted) {
      setState(() {});
    }
  }

  Map<String, dynamic> _formatInputs(String inputJson) {
    try {
      return jsonDecode(inputJson);
    } catch (e) {
      log('Error formatting inputs: $e');
      return {};
    }
  }

  Map<String, dynamic> _getInputs() {
    final trigger = _provider.manifest.triggers
        .where((t) => t.name == widget.name)
        .toList();

    final action =
        _provider.manifest.actions.where((a) => a.name == widget.name).toList();

    if (trigger.isNotEmpty) {
      return _formatInputs(trigger.first.input.value);
    }

    if (action.isNotEmpty) {
      return _formatInputs(action.first.input.value);
    }

    return {};
  }

  List<Widget> _buildInputFields(Map<String, dynamic> inputs) {
    return inputs.entries.map((entry) {
      final key = entry.key;
      final label = _getInputLabel(entry);

      if (!_controllers.containsKey(key)) {
        _controllers[key] = TextEditingController(text: '');
      }

      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controllers[key],
              style: const TextStyle(color: AppColors.textPrimary),
              decoration: InputDecoration(
                hintText: 'Enter $label',
                hintStyle: const TextStyle(
                    color: AppColors.textPrimary60,
                    fontWeight: FontWeight.bold),
                filled: true,
                fillColor: const Color(0xff1B1B1B),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.textPrimary60),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  String _getInputLabel(MapEntry<String, dynamic> entry) {
    if (entry.value is Map && entry.value['name'] != null) {
      return entry.value['name'];
    }
    return entry.key;
  }

  Widget _buildValidateButton() {
    final color = Color(int.parse(_provider.color.replaceFirst('#', '0xff')));
    final darkenedColor = Color.fromRGBO(
      (color.red * 0.82).toInt(),
      (color.green * 0.82).toInt(),
      (color.blue * 0.82).toInt(),
      1.0,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ElevatedButton(
        onPressed: () {
          final providerId = widget.id;

          final trigger = _provider.manifest.triggers
              .where((t) => t.name == widget.name)
              .toList();

          final action = _provider.manifest.actions
              .where((a) => a.name == widget.name)
              .toList();

          final actionId =
              trigger.isNotEmpty ? trigger.first.id : action.first.id;

          final input = <String, dynamic>{};
          _controllers.forEach((key, controller) {
            input[key] = controller.text;
          });

          final newNode = TriggerNode(
            providerId: providerId,
            actionId: actionId,
            input: input,
          );

          if (TriggerNodeManager.rootTriggerNode == null) {
            TriggerNodeManager.setRootTriggerNode(newNode, widget.name);
          } else {
            try {
              TriggerNodeManager.addNextTriggerNode(newNode, widget.name);
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: $e')),
              );
            }
          }

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const AppletCreation(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: darkenedColor,
        ),
        child: const Text(
          'Create',
          style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: AppColors.background,
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primaryLight),
          ),
        ),
      );
    }

    final trigger = _provider.manifest.triggers
        .where((t) => t.name == widget.name)
        .toList();

    final action =
        _provider.manifest.actions.where((a) => a.name == widget.name).toList();

    return Scaffold(
      backgroundColor:
          Color(int.parse(_provider.color.replaceFirst('#', '0xff'))),
      appBar: AppBar(
        backgroundColor:
            Color(int.parse(_provider.color.replaceFirst('#', '0xff'))),
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
                  onPressed: () {
                    _controllers.forEach((key, controller) {
                      controller.dispose();
                    });
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(width: 10),
                Text(
                  trigger.isNotEmpty
                      ? 'Choose your Trigger'
                      : 'Choose your Reaction',
                  style: const TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
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
                color:
                    Color(int.parse(_provider.color.replaceFirst('#', '0xff'))),
                boxShadow: [
                  BoxShadow(
                    color: Color(
                        int.parse(_provider.color.replaceFirst('#', '0xff'))),
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
                    child: _provider.img.isNotEmpty
                        ? Image.network(
                            trigger.isNotEmpty
                                ? trigger.first.img
                                : action.first.img,
                            fit: BoxFit.fitWidth,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(
                                Icons.image_not_supported,
                                color: Colors.grey,
                                size: 100,
                              );
                            },
                          )
                        : const Icon(
                            Icons.image_not_supported,
                            color: Colors.grey,
                            size: 100,
                          ),
                  ),
                  const SizedBox(height: 16),
                  trigger.isNotEmpty
                      ? Text(
                          trigger.first.description,
                          style: const TextStyle(
                            fontSize: 24,
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: true,
                        )
                      : Text(
                          action.first.description,
                          style: const TextStyle(
                            fontSize: 24,
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          softWrap: true,
                        ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(height: 50),
            ..._buildInputFields(_getInputs()),
            const SizedBox(height: 50),
            _buildValidateButton(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
