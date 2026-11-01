import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class SmartScheduleNote extends StatelessWidget {
  const SmartScheduleNote({super.key});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 11),
    decoration: BoxDecoration(
      color: AppColors.surfaceLightBlue,
      borderRadius: BorderRadius.circular(14),
    ),
    child: Row(
      children: [
        const Icon(Icons.lightbulb_outline, color: AppColors.primary, size: 19),
        const SizedBox(width: 9),
        Expanded(
          child: Text.rich(
            TextSpan(
              style: Theme.of(context).textTheme.bodySmall,
              children: [
                TextSpan(
                  text: '${'dash_smart_schedule'.tr()}: ',
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(text: 'dash_smart_schedule_note'.tr()),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
