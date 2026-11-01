import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class WeekNavigation extends StatelessWidget {
  const WeekNavigation({super.key, required this.onPrevious, required this.onNext});

  final VoidCallback onPrevious;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      _WeekButton(icon: Icons.chevron_left, onPressed: onPrevious),
      const SizedBox(width: 8),
      const Icon(Icons.calendar_today_outlined, size: 17, color: AppColors.primary),
      const SizedBox(width: 6),
      Expanded(
        child: Text('schedule_week_range'.tr(), style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700)),
      ),
      SegmentedButton<int>(
        segments: [
          ButtonSegment(value: 0, label: Text('schedule_day_view'.tr()), icon: const Icon(Icons.view_day_outlined)),
          ButtonSegment(value: 1, label: Text('schedule_week_view'.tr()), icon: const Icon(Icons.view_week_outlined)),
        ],
        selected: const {0},
        onSelectionChanged: (_) {},
        showSelectedIcon: false,
        style: const ButtonStyle(visualDensity: VisualDensity.compact, textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 11))),
      ),
      const SizedBox(width: 6),
      _WeekButton(icon: Icons.chevron_right, onPressed: onNext),
    ],
  );
}

class _WeekButton extends StatelessWidget {
  const _WeekButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 30,
    height: 34,
    child: IconButton.filledTonal(
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      style: IconButton.styleFrom(backgroundColor: AppColors.surfaceLightBlue, foregroundColor: AppColors.primary),
    ),
  );
}
