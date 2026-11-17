import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SessionStatusIndicator extends StatelessWidget {
  const SessionStatusIndicator({
    super.key,
    required this.isLab,
    required this.accent,
  });

  final bool isLab;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          isLab ? Icons.science_outlined : Icons.check_circle,
          size: 14,
          color: accent,
        ),
        const SizedBox(width: 4),
        Expanded(
          child: Text(
            (isLab ? 'schedule_lab_status' : 'schedule_attended').tr(),
            style: Theme.of(context).textTheme.labelSmall
                ?.copyWith(color: accent, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
