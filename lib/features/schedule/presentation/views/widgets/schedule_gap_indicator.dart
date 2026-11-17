import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class ScheduleGapIndicator extends StatelessWidget {
  const ScheduleGapIndicator({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsetsDirectional.only(start: 51, top: 3, bottom: 9),
    child: Row(
      children: [
        const Icon(Icons.more_horiz, size: 17, color: AppColors.lightGreen),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            'schedule_transition'.tr(),
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              fontSize: 9,
            ),
          ),
        ),
      ],
    ),
  );
}
