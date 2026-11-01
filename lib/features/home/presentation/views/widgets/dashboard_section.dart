import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/home/presentation/views/widgets/status_pill.dart';

class DashboardSection extends StatelessWidget {
  const DashboardSection({
    super.key,
    required this.title,
    required this.child,
    this.action,
    this.badge,
    this.icon,
  });
  final String title;
  final String? action;
  final String? badge;
  final IconData? icon;
  final Widget child;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 18),
    child: Column(
      children: [
        Row(
          children: [
            if (icon != null) ...[
              Icon(icon, size: 17, color: AppColors.primary),
              const SizedBox(width: 6),
            ],
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            if (badge != null) ...[
              StatusPill(label: badge!, color: AppColors.red),
              const SizedBox(width: 8),
            ],
            if (action != null)
              Text(action!, style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
        const SizedBox(height: 10),
        child,
      ],
    ),
  );
}
