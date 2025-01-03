import 'package:flutter/material.dart';

class AppletCreation extends StatefulWidget {
  const AppletCreation({super.key});

  @override
  State<AppletCreation> createState() => _AppletCreationState();
}

class _AppletCreationState extends State<AppletCreation> {
  String? _selectedOption1;
  String? _selectedOption2;
  final List<String?> _additionalSelectedOptions = [];
  final List<String> _options1 = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4'
  ];
  final List<String> _options2 = [
    'Option A',
    'Option B',
    'Option C',
    'Option D'
  ];

  void _addDropdown() {
    setState(() {
      _additionalSelectedOptions.add(null);
    });
  }

  Widget _buildDropdown({
    required String? selectedOption,
    required List<String> options,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
      height: 120,
      width: 380,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: DropdownButton<String>(
          value: selectedOption,
          dropdownColor: Colors.black87,
          hint: const Text('Trigger ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
          icon: const Icon(Icons.arrow_drop_down, color: Colors.black),
          style: const TextStyle(color: Colors.white, fontSize: 16),
          underline: Container(),
          isExpanded: true,
          alignment: Alignment.centerLeft,
          items: options.map((String option) {
            return DropdownMenuItem<String>(
              value: option,
              child: Text(option),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      appBar: AppBar(
        title: const Text('Applet Creation'),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        backgroundColor: const Color(0xff1B1B1B),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildDropdown(
              selectedOption: _selectedOption1,
              options: _options1,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption1 = newValue;
                });
              },
            ),
            const SizedBox(height: 20),
            const Icon(Icons.arrow_downward, color: Colors.white, size: 24),
            const SizedBox(height: 20),
            _buildDropdown(
              selectedOption: _selectedOption2,
              options: _options2,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption2 = newValue;
                });
              },
            ),
            const SizedBox(height: 20),
            ..._additionalSelectedOptions.asMap().entries.map((entry) {
              int index = entry.key;
              String? selectedOption = entry.value;
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: _buildDropdown(
                  selectedOption: selectedOption,
                  options: _options2,
                  onChanged: (String? newValue) {
                    setState(() {
                      _additionalSelectedOptions[index] = newValue;
                    });
                  },
                ),
              );
            }),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addDropdown,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff8E44AD),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                shape: const CircleBorder(),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 48,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
