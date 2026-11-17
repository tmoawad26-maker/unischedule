import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class ScheduleHeader extends StatelessWidget {
  const ScheduleHeader({super.key});

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          color: AppColors.surfaceLightBlue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(Icons.calendar_month_rounded, color: AppColors.primary),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('schedule_title'.tr(), style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700)),
            Text('schedule_term'.tr(), style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
      IconButton(
        tooltip: 'schedule_notifications'.tr(),
        onPressed: () {},
        icon: const Icon(Icons.notifications_none_rounded),
      ),
      CircleAvatar(
        radius: 17,
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.person_outline, color: Colors.white, size: 19),
      ),
    ],
  );
}
