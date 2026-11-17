import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/home/models/dashboard_sample_data.dart';
import 'package:unischedule/features/home/presentation/views/widgets/summary_metric.dart';

class WeeklyScheduleStrip extends StatelessWidget {
  const WeeklyScheduleStrip({super.key});
  @override
  Widget build(BuildContext context) => Column(
    children: [
      Row(
        children: dashboardWeek.map((day) {
          final selected = day.number == '12';
          return Expanded(
            child: Container(
              margin: const EdgeInsetsDirectional.only(end: 6),
              padding: const EdgeInsets.symmetric(vertical: 9),
              decoration: BoxDecoration(
                color: selected ? AppColors.primary : AppColors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: selected
                      ? AppColors.primary
                      : AppColors.surfaceLightBlue,
                ),
              ),
              child: Column(
                children: [
                  Text(
                    day.label.tr(),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: selected ? AppColors.white : AppColors.lightBlack,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    day.number,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: selected ? AppColors.white : AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: day.hasClass
                          ? (selected ? AppColors.lightGreen : AppColors.green)
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
      const SizedBox(height: 8),
      Row(
        children: [
          Expanded(
            child: SummaryMetric(
              context: context,
              label: 'dash_week_days'.tr(),
              value: '3',
              icon: Icons.calendar_view_week,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: SummaryMetric(
              context: context,
              label: 'dash_week_sessions'.tr(),
              value: '12',
              icon: Icons.menu_book_outlined,
            ),
          ),
        ],
      ),
    ],
  );
}
