import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class SummaryMetric extends StatelessWidget {
  const SummaryMetric({
    super.key,
    required this.context,
    required this.label,
    required this.value,
    required this.icon,
  });

  final BuildContext context;
  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: [
        Icon(icon, size: 17, color: AppColors.green),
        const SizedBox(width: 7),
        Text(value, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: 5),
        Expanded(
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    ),
  );
}
