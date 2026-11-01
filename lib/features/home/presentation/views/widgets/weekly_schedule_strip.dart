import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/home/presentation/views/widgets/dashboard_sample_data.dart';

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
            child: _summaryMetric(
              context,
              'dash_week_days'.tr(),
              '3',
              Icons.calendar_view_week,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: _summaryMetric(
              context,
              'dash_week_sessions'.tr(),
              '12',
              Icons.menu_book_outlined,
            ),
          ),
        ],
      ),
    ],
  );

  Widget _summaryMetric(
    BuildContext context,
    String label,
    String value,
    IconData icon,
  ) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: [
        Icon(icon, size: 17, color: AppColors.green),
        const SizedBox(width: 7),
        Text(value, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: 5),
        Expanded(
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    ),
  );
}
