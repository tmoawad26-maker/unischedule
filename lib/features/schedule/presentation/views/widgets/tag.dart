import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({super.key, required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
    decoration: BoxDecoration(
      color: color.withValues(alpha: .1),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Text(
      label.tr(),
      style: Theme.of(context).textTheme.labelSmall?.copyWith(
        color: color,
        fontSize: 8,
        fontWeight: FontWeight.w800,
      ),
    ),
  );
}