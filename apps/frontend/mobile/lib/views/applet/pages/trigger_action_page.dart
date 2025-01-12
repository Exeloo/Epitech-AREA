import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

  @override
  void didUpdateWidget(TriggerActionPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.id != widget.id) {
      setState(() {
        _isLoading = true;
      });
      _disposeControllers();
      _getProvidersById(context);
    }
  }

  @override
  void dispose() {
    _disposeControllers();
    super.dispose();
  }

  void _disposeControllers() {
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    _controllers.clear();
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
    _disposeControllers();

    for (var key in inputs.keys) {
      _controllers[key] = TextEditingController(text: '');
    }
    if (mounted) {
      setState(() {});
    }
  }

  Map<String, dynamic> _formatInputs(String inputJson) {
    print('inputtttssss ${_provider.manifest.triggers} ${_provider.manifest.actions}');
    try {
      return jsonDecode(inputJson);
    } catch (e) {
      log('Error formatting inputs: $e');
      return {};
    }
  }

  void _updateInputValue(String key, String value) {
    if (mounted && _controllers.containsKey(key)) {
      setState(() {
        _controllers[key]?.text = value;
      });
    }
  }

  Map<String, dynamic> _getInputs() {
    final trigger = (() {
      try {
        return _provider.manifest.triggers.firstWhere(
              (t) => t.name == widget.name,
        );
      } catch (e) {
        return null;
      }
    })();

    final action = (() {
      try {
        return _provider.manifest.actions.firstWhere(
              (a) => a.name == widget.name,
        );
      } catch (e) {
        return null;
      }
    })();

    return _formatInputs(trigger != null ? trigger.input.value : action!.input.value);
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
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controllers[key],
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Enter $label',
                hintStyle: const TextStyle(color: Colors.white60, fontWeight: FontWeight.bold),
                filled: true,
                fillColor: const Color(0xff1B1B1B),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xff1B1B1B)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white60),
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
      (color.r * 0.82).toInt(),
      (color.g * 0.82).toInt(),
      (color.b * 0.82).toInt(),
      0,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ElevatedButton(
        onPressed: () {
          _controllers.forEach((key, controller) {
            final value = controller.text;
            _updateInputValue(key, value);
          });

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('All fields have been updated!')),
          );
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: darkenedColor,
        ),
        child: const Text(
          'Create',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: Color(0xff1B1B1B),
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ),
      );
    }

    final trigger = (() {
      try {
        return _provider.manifest.triggers.firstWhere(
              (t) => t.name == widget.name,
        );
      } catch (e) {
        return null;
      }
    })();

    final action = (() {
      try {
        return _provider.manifest.actions.firstWhere(
              (a) => a.name == widget.name,
        );
      } catch (e) {
        return null;
      }
    })();

    return Scaffold(
      backgroundColor: Color(int.parse(_provider.color.replaceFirst('#', '0xff'))),
      appBar: AppBar(
        backgroundColor: Color(int.parse(_provider.color.replaceFirst('#', '0xff'))),
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white, size: 40),
                  onPressed: () {
                    _controllers.forEach((key, controller) {
                      controller.dispose();
                    });
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(width: 10),
                Text(
                  trigger != null ? 'Choose your Trigger' : 'Choose your Reaction',
                  style: const TextStyle(
                    color: Colors.white,
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
                color: Color(int.parse(_provider.color.replaceFirst('#', '0xff'))),
                boxShadow: [
                  BoxShadow(
                    color: Color(int.parse(_provider.color.replaceFirst('#', '0xff'))),
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
                      trigger != null ? trigger.img : action!.img,
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
                  trigger != null
                      ? Text(
                    trigger.description,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: true,
                  )
                      : Text(
                    action!.description,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
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