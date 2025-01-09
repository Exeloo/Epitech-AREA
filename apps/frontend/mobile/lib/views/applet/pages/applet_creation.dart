import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../graphql/__generated__/provider.data.gql.dart';
import '../../../modules/graphql/repository/applet_repository.dart';
import '../../../modules/graphql/repository/provider_repository.dart';

class AppletCreation extends StatefulWidget {
  final int providerId;

  const AppletCreation({super.key, required this.providerId});

  @override
  State<AppletCreation> createState() => _AppletCreationState();
}

class _AppletCreationState extends State<AppletCreation> {
  late GgetProviderByIdData_getProviderById _provider;
  List<String> _triggers = [], _actions = [];
  String? _selectedTrigger;
  Map<String, dynamic>? _triggerInputs;
  List<String> _selectedActions = [];
  List<Map<String, dynamic>> _actionsInputs = [];
  bool _isLoading = true;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final List<TextEditingController> _inputControllers = [];

  @override
  void initState() {
    super.initState();
    _loadProviderData();
  }

  Future<void> _loadProviderData() async {
    final providerRepo =
        Provider.of<ProviderRepository>(context, listen: false);
    try {
      final response =
          await providerRepo.getProviderById(id: widget.providerId);
      setState(() {
        _provider = response!.getProviderById;
        _triggers = _provider.manifest.triggers.map((t) => t.name).toList();
        _actions = _provider.manifest.actions.map((a) => a.name).toList();
        _isLoading = false;
      });
    } catch (e) {
      log('Error fetching provider data: $e');
      setState(() => _isLoading = false);
    }
  }

  void _onTriggerSelected(String triggerName) {
    setState(() {
      _selectedTrigger = triggerName;
      final trigger =
          _provider.manifest.triggers.firstWhere((t) => t.name == triggerName);
      _triggerInputs = _formatInputs(trigger.input.value);
    });
  }

  void _onActionSelected(String actionName) {
    setState(() {
      _selectedActions = [actionName];
      final action = _provider.manifest.actions.firstWhere(
        (a) => a.name == actionName,
        orElse: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text(
                    'Selected action not found. Please select a valid action.')),
          );
          return _provider.manifest.actions.first;
        },
      );
      _actionsInputs = [_formatInputs(action.input.value)];
    });
  }

  Map<String, dynamic> _formatInputs(String inputJson) {
    final Map<String, dynamic> inputs = jsonDecode(inputJson);
    final Map<String, dynamic> formattedInputs = {};
    inputs.forEach((key, value) {
      formattedInputs[key] = value;
    });
    return formattedInputs;
  }

  void _updateInputValue(
      Map<String, dynamic> inputs, String key, String value) {
    setState(() {
      inputs[key] = value;
    });
  }

  void _createApplet() async {
    if (_selectedTrigger == null ||
        _selectedActions.isEmpty ||
        _nameController.text.isEmpty ||
        _descriptionController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
            'Please provide all fields: name, description, trigger, and action'),
      ));
      return;
    }

    final selectedTrigger = _provider.manifest.triggers.firstWhere(
      (t) => t.name == _selectedTrigger,
      orElse: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text(
                  'Selected trigger not found. Please select a valid trigger.')),
        );
        return _provider.manifest.triggers.first;
      },
    );

    final selectedAction = _provider.manifest.actions.firstWhere(
      (a) => a.name == _selectedActions.first,
      orElse: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
              content: Text(
                  'Selected action not found. Please select a valid action.')),
        );
        return _provider.manifest.actions.first;
      },
    );

    if (selectedAction.name == 'message-create') {
      _actionsInputs.first['channel_id'] = '1164114981986512987';
      _actionsInputs.first['content'] = 'Hello World!';
    }

    final appletData = {
      'name': _nameController.text,
      'description': _descriptionController.text,
      'triggerNodes': [
        {
          'providerId': widget.providerId,
          'actionId': selectedTrigger.id,
          'input': _triggerInputs,
          'next': [
            {
              'providerId': widget.providerId,
              'actionId': selectedAction.id,
              'input': _actionsInputs.first,
              'next': [],
            },
          ],
        }
      ],
    };

    final appletRepo = Provider.of<AppletRepository>(context, listen: false);

    try {
      final response = await appletRepo.createApplet(
        name: _nameController.text,
        description: _descriptionController.text,
        triggerNodesData: List<Map<String, dynamic>>.from(
            appletData['triggerNodes'] as Iterable),
      );

      if (response != null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content:
              Text('Applet "${_nameController.text}" created successfully!'),
        ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Failed to create applet: No response received'),
        ));
      }
    } catch (e) {
      log('Error creating applet: $e');
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Failed to create applet'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Applet Creation',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xff1B1B1B),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: const Color(0xff1B1B1B),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  _buildButton('If This', _selectedTrigger, _triggers,
                      _onTriggerSelected),
                  const SizedBox(height: 20),
                  if (_triggerInputs != null)
                    ..._buildInputFields(_triggerInputs!),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () async {
                      final selectedAction =
                          await _showSelectionDialog('Select Action', _actions);
                      if (selectedAction != null) {
                        _onActionSelected(selectedAction);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey.shade200,
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text(
                      'Add Action',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ..._selectedActions.asMap().entries.map((entry) {
                    final index = entry.key;
                    final actionName = entry.key;

                    return Column(
                      children: [
                        Text('Action: $actionName',
                            style: const TextStyle(color: Colors.white)),
                        ..._buildInputFields(_actionsInputs[index]),
                        const Divider(color: Colors.grey),
                      ],
                    );
                  }),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Applet Name',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(
                      labelText: 'Applet Description',
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blueGrey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: _createApplet,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text(
                      'Create Applet',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
    );
  }

  List<Widget> _buildInputFields(Map<String, dynamic> inputs) {
    _inputControllers.clear();

    return inputs.entries.map((entry) {
      final key = entry.key;
      final value = entry.value;

      final controller = TextEditingController(text: value.toString());
      _inputControllers.add(controller);

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(key, style: const TextStyle(color: Colors.white)),
          TextField(
            controller: controller,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              labelStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              _updateInputValue(inputs, key, controller.text);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Field "$key" updated!')),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade400,
              minimumSize: const Size(double.infinity, 40),
            ),
            child: const Text(
              'Valider',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
        ],
      );
    }).toList();
  }

  Future<String?> _showSelectionDialog(
      String title, List<String> options) async {
    return showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: options
                .map((e) => ListTile(
                      title: Text(e),
                      onTap: () {
                        Navigator.pop(context, e);
                      },
                    ))
                .toList(),
          ),
        );
      },
    );
  }

  Widget _buildButton(String text, String? selected, List<String> options,
      Function(String) onSelect) {
    return ElevatedButton(
      onPressed: () async {
        final selectedOption = await _showSelectionDialog(text, options);
        if (selectedOption != null) {
          onSelect(selectedOption);
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor:
            selected == null ? Colors.blueGrey.shade200 : Colors.blue.shade200,
        minimumSize: const Size(double.infinity, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(
        selected ?? text,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
