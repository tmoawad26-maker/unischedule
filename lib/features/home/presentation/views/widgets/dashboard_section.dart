import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/home/models/dashboard_section_model.dart';
import 'package:unischedule/features/home/presentation/views/widgets/status_pill.dart';

class DashboardSection extends StatelessWidget {
  const DashboardSection({
    super.key,
    required this.section,
  });
  final DashboardSectionModel section;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 18),
    child: Column(
      children: [
        Row(
          children: [
            if (section.icon != null) ...[
              Icon(section.icon, size: 17, color: AppColors.primary),
              const SizedBox(width: 6),
            ],
            Expanded(
              child: Text(
                section.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            if (section.badge != null) ...[
              StatusPill(label: section.badge!, color: AppColors.red),
              const SizedBox(width: 8),
            ],
            if (section.action != null)
              Text(section.action!, style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
        const SizedBox(height: 10),
        section.child,
      ],
    ),
  );
}
