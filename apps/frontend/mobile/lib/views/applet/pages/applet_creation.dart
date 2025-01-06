import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../graphql/__generated__/provider.data.gql.dart';
import '../../../modules/graphql/repository/provider_repository.dart';

class AppletCreation extends StatefulWidget {
  final int providerId;

  const AppletCreation({super.key, required this.providerId});

  @override
  State<AppletCreation> createState() => _AppletCreationState();
}

class _AppletCreationState extends State<AppletCreation> {
  late GgetProviderByIdData_getProviderById _provider;
  List<String> _triggers = [];
  List<String> _actions = [];
  String? _selectedTrigger;
  List<String?> _selectedActions = [null]; // Inclut un bouton "Then That" par défaut.
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadProviderData();
  }

  Future<void> _loadProviderData() async {
    final providerRepo = Provider.of<ProviderRepository>(context, listen: false);
    try {
      final response = await providerRepo.getProviderById(id: widget.providerId);
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

  void _selectTrigger() async {
    final trigger = await _showSelectionDialog('Select a Trigger', _triggers);
    setState(() => _selectedTrigger = trigger);
  }

  void _selectAction(int index) async {
    final action = await _showSelectionDialog('Select an Action', _actions);
    setState(() => _selectedActions[index] = action);
  }

  Future<String?> _showSelectionDialog(String title, List<String> options) {
    return showDialog<String>(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(title),
        children: options.map((option) {
          return SimpleDialogOption(
            onPressed: () => Navigator.pop(context, option),
            child: Text(option),
          );
        }).toList(),
      ),
    );
  }

  void _addAction() {
    setState(() => _selectedActions.add(null));
  }

  void _removeAction(int index) {
    if (_selectedActions.length > 1) {
      setState(() => _selectedActions.removeAt(index));
    }
  }

  Widget _buildActionButton({
    required String label,
    required Color color,
    required VoidCallback onPressed,
    IconData? trailingIcon,
    VoidCallback? onTrailingPressed,
    bool canDelete = true,
  }) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white))),
            if (canDelete && trailingIcon != null)
              IconButton(
                icon: Icon(trailingIcon, color: Colors.red),
                onPressed: onTrailingPressed,
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Applet Creation', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
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
            _buildActionButton(
              label: _selectedTrigger ?? 'If This',
              color: _selectedTrigger != null ? Colors.blueGrey : Colors.blue,
              onPressed: _selectTrigger,
            ),
            const SizedBox(height: 20),
            ..._selectedActions.asMap().entries.map((entry) {
              final index = entry.key;
              final action = entry.value;
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: _buildActionButton(
                  label: action ?? 'Then That',
                  color: action != null ? Colors.green : Colors.lightGreen,
                  onPressed: () => _selectAction(index),
                  trailingIcon: Icons.delete,
                  onTrailingPressed: () => _removeAction(index),
                  canDelete: index != 0, // Le premier "Then That" ne peut pas être supprimé.
                ),
              );
            }).toList(),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addAction,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey.shade800),
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}