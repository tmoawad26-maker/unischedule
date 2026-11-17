import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class HardwareStatus extends StatelessWidget {
  const HardwareStatus({super.key});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: AppColors.surfaceLightBlue,
      borderRadius: BorderRadius.circular(9),
    ),
    child: Row(
      children: [
        const Icon(Icons.memory_outlined, size: 15, color: AppColors.green),
        const SizedBox(width: 6),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'schedule_hardware_check'.tr(),
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'schedule_hardware_status'.tr(),
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontSize: 9,
                ),
              ),
            ],
          ),
        ),
        const Icon(Icons.circle, size: 7, color: AppColors.green),
      ],
    ),
  );
}