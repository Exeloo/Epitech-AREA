import 'package:flutter/material.dart';

import '../../../config/colors.dart';

class MyCard extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final VoidCallback onTap;

  const MyCard({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Positioned(
              bottom: 8,
              left: 10,
              child: Text(
                text,
                style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 40,
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
