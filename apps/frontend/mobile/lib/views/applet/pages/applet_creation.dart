import 'package:aether/views/applet/pages/provider_selection.dart';
import 'package:aether/views/mainPage/pages/main_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../config/colors.dart';
import '../../../modules/graphql/repository/applet_repository.dart';
import '../models/applet_data.dart';

class AppletCreation extends StatefulWidget {
  final int? providerId;

  const AppletCreation({super.key, this.providerId});

  @override
  State<AppletCreation> createState() => _AppletCreationState();
}

class _AppletCreationState extends State<AppletCreation> {
  final List<String> _triggers = [], _actions = [];
  late String? _selectedTrigger =
      TriggerNodeManager.triggerName?.isNotEmpty ?? false
          ? TriggerNodeManager.triggerName
          : '';
  final List<String> _selectedActions = TriggerNodeManager.actionNames;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void _createApplet() async {
    if (_nameController.text.isEmpty || _descriptionController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
            'Please provide all fields: name, description, trigger, and action'),
      ));
      return;
    }

    final appletRepo = Provider.of<AppletRepository>(context, listen: false);

    try {
      final response = await appletRepo.createApplet(
        name: _nameController.text,
        description: _descriptionController.text,
        triggerNodesData: TriggerNodeManager.rootTriggerNode != null
            ? [TriggerNodeManager.rootTriggerNode!.toJson()]
            : [],
      );
      TriggerNodeManager.reset();
      if (response != null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content:
              Text('Applet "${_nameController.text}" created successfully!'),
        ));
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MainNavigationPage(),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Failed to create applet: No response received'),
        ));
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Failed to create applet'),
      ));
    }
  }

  Widget _buildButton(
      String text, dynamic selected, List<String> options, String inputType,
      {bool isDisabled = false}) {
    final isSelectedList = selected is List<String>;

    return GestureDetector(
      onTap: isDisabled
          ? null
          : () async {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ProviderSelection(inputType: inputType),
                ),
              );
            },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        constraints: const BoxConstraints(
          minHeight: 80,
        ),
        decoration: BoxDecoration(
          color: isDisabled
              ? Colors.grey.shade500
              : (isSelectedList
                  ? (selected.isEmpty ? AppColors.primaryLight : Colors.black)
                  : (selected == '' ? AppColors.primaryLight : Colors.black)),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                isSelectedList
                    ? (selected.isEmpty
                        ? text
                        : selected.map((e) => "Then $e").join('\n'))
                    : (selected == '' ? text : "If $selected"),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: (isSelectedList
                      ? (selected.isEmpty
                          ? Colors.black
                          : AppColors.textPrimary)
                      : (selected == ''
                          ? Colors.black
                          : AppColors.textPrimary)),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                color: isDisabled ? Colors.grey.shade700 : Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Text(
                "Add",
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isTriggerSelected = _selectedTrigger?.isNotEmpty ?? false;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Applet Creation',
          style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xff1B1B1B),
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.textPrimary),
      ),
      backgroundColor: const Color(0xff1B1B1B),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            _buildButton(
              'If This',
              _selectedTrigger,
              _triggers,
              'trigger',
              isDisabled: isTriggerSelected,
            ),
            CustomPaint(
              size: const Size(double.infinity, 50),
              painter: LinePainter(),
            ),
            _buildButton(
              'Then That',
              _selectedActions,
              _actions,
              'action',
              isDisabled: !isTriggerSelected,
            ),
            const SizedBox(height: 40),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Applet Name',
                labelStyle: TextStyle(color: AppColors.textPrimary),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
              ),
              style: const TextStyle(color: AppColors.textPrimary),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Applet Description',
                labelStyle: TextStyle(color: AppColors.textPrimary),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)),
              ),
              style: const TextStyle(color: AppColors.textPrimary),
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
            ElevatedButton(
              onPressed: () {
                setState(() {
                  TriggerNodeManager.reset();
                  _selectedTrigger = '';
                  _selectedActions.clear();
                  _nameController.clear();
                  _descriptionController.clear();
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              child: const Text(
                'Reset',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke;

    final startPoint = Offset(size.width / 2, 0);
    final endPoint = Offset(size.width / 2, size.height);

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
