import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class StatusPill extends StatelessWidget {
  const StatusPill({super.key, required this.label, required this.color});
  final String label;
  final Color color;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
    decoration: BoxDecoration(
      color: color.withValues(alpha: .14),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      label,
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
        color: color == AppColors.lightGreen ? AppColors.primary : color,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    ),
  );
}
