import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/schedule/models/schedule_day_model.dart';

class ScheduleDayWidget extends StatelessWidget {
  const ScheduleDayWidget({
    super.key,
    required this.day,
    required this.foreground,
    required this.selected,
  });

  final ScheduleDayModel day;
  final Color foreground;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          day.label.tr().toUpperCase(),
          style: Theme.of(context).textTheme.labelSmall
              ?.copyWith(color: foreground, fontWeight: FontWeight.w600),
        ),
        Text(
          day.date,
          style: Theme.of(context).textTheme.titleMedium
              ?.copyWith(color: foreground, fontWeight: FontWeight.w700),
        ),
        Text(
          day.classSummary.tr(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: selected ? AppColors.lightGreen : AppColors.grey,
            fontSize: 8,
          ),
        ),
      ],
    );
  }
}
