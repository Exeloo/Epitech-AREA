import 'package:aether/views/applet/pages/provider_selection.dart';
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
  final String? _selectedTrigger =
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

  @override
  Widget build(BuildContext context) {
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
            _buildButton('If This', _selectedTrigger, _triggers, 'trigger'),
            CustomPaint(
              size: const Size(double.infinity, 50),
              painter: LinePainter(),
            ),
            _buildButton('Then That', _selectedActions, _actions, 'action'),
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
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
      String text, dynamic selected, List<String> options, String inputType) {
    final isSelectedList = selected is List<String>;

    return GestureDetector(
      onTap: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const ProviderSelection(),
          ),
        );
      },
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: isSelectedList
              ? (selected.isEmpty ? AppColors.primaryLight : Colors.black)
              : (selected == '' ? AppColors.primaryLight : Colors.black),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 1),
            Text(
              isSelectedList
                  ? (selected.isEmpty
                      ? text
                      : selected.map((e) => "Then $e").join(', '))
                  : (selected == '' ? text : "If $selected"),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: isSelectedList
                    ? (selected.isEmpty ? Colors.black : AppColors.textPrimary)
                    : (selected == '' ? Colors.black : AppColors.textPrimary),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.black,
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
