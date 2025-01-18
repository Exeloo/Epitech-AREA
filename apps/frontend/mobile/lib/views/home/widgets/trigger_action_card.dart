import 'package:aether/views/applet/pages/trigger_action_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/colors.dart';

class TriggerActionCard extends StatelessWidget {
  final String? logoUrl;
  final String name;
  final String color;
  final String description;
  final bool canClick;
  final int providerId;

  const TriggerActionCard({
    required this.logoUrl,
    required this.name,
    required this.color,
    required this.description,
    required this.canClick,
    super.key,
    required this.providerId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (canClick) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  TriggerActionPage(id: providerId, name: name),
            ),
          );
        }
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        color: Color(int.parse(color.replaceFirst('#', '0xff'))),
        elevation: 4,
        child: Container(
          width: 380,
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: logoUrl != null && logoUrl!.isNotEmpty
                      ? SvgPicture.network(
                          logoUrl!,
                          fit: BoxFit.cover,
                          color: Colors.black,
                        )
                      : const SizedBox.shrink(),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.textSecondary,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
