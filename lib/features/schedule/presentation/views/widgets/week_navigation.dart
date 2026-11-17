import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/week_button.dart';

class WeekNavigation extends StatelessWidget {
  const WeekNavigation({super.key, required this.onPrevious, required this.onNext});

  final VoidCallback onPrevious;
  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      WeekButton(icon: Icons.chevron_left, onPressed: onPrevious),
       SizedBox(width: 8.w),
      const Icon(Icons.calendar_today_outlined, size: 17, color: AppColors.primary),
       SizedBox(width: 6.w),
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
        style:  ButtonStyle(visualDensity: VisualDensity.compact, textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 11.sp))),
      ),
       SizedBox(width: 6.w),
      WeekButton(icon: Icons.chevron_right, onPressed: onNext),
    ],
  );
}

