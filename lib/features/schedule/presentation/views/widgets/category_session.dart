import 'package:flutter/material.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/tag.dart';

class CategorySession extends StatelessWidget {
  const CategorySession({
    super.key,
    required this.isLab,
    required this.accent,
  });

  final bool isLab;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Tag(
        label: isLab
            ? 'schedule_practical_lab'
            : 'schedule_theory_lecture',
        color: accent,
      ),
    );
  }
}