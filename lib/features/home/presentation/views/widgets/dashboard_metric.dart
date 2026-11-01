import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class DashboardMetric extends StatelessWidget {
  const DashboardMetric({
    super.key,
    required this.label,
    required this.value,
    required this.detail,
    required this.icon,
    this.valueColor = AppColors.green,
  });

  final String label;
  final String value;
  final String detail;
  final IconData icon;
  final Color valueColor;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(9),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(13),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Icon(icon, size: 15, color: valueColor),
          ],
        ),
        const SizedBox(height: 5),
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            value,
            style: Theme.of(context).textTheme.titleMedium
                ?.copyWith(color: valueColor),
          ),
        ),
        const SizedBox(height: 3),
        Text(
          detail,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall
              ?.copyWith(color: valueColor),
        ),
      ],
    ),
  );
}
