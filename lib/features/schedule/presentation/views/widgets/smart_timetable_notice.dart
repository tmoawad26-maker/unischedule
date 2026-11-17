import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class SmartTimetableNotice extends StatelessWidget {
  const SmartTimetableNotice({super.key});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(color: AppColors.surfaceLightBlue, borderRadius: BorderRadius.circular(15)),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(width: 27, height: 27, decoration: BoxDecoration(color: const Color(0xffD7F6F0), borderRadius: BorderRadius.circular(9)), child: const Icon(Icons.auto_awesome, size: 16, color: AppColors.green)),
        const SizedBox(width: 10),
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [Expanded(child: Text('schedule_smart_notice'.tr(), style: Theme.of(context).textTheme.labelMedium?.copyWith(color: AppColors.green, fontWeight: FontWeight.w800))), Text('schedule_optimal_route'.tr(), style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.primary, fontSize: 9))]),
            const SizedBox(height: 5),
            Text('schedule_smart_description'.tr(), style: Theme.of(context).textTheme.bodySmall?.copyWith(height: 1.35)),
          ]),
        ),
      ],
    ),
  );
}
