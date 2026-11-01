import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/home/presentation/views/widgets/status_pill.dart';

class TodayScheduleCard extends StatelessWidget {
  const TodayScheduleCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'dash_today_schedule'.tr(),
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
              StatusPill(
                label: 'dash_next_class'.tr(),
                color: AppColors.lightGreen,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            '10:15 AM - 12:00 PM',
            style: theme.textTheme.labelMedium?.copyWith(
              color: AppColors.lightGreen,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'dash_today_class'.tr(),
            style: theme.textTheme.titleLarge?.copyWith(color: AppColors.white),
          ),
          const SizedBox(height: 8),
          Text(
            'dash_class_info'.tr(),
            style: theme.textTheme.bodySmall?.copyWith(
              color: AppColors.white.withValues(alpha: .8),
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 16,
                color: AppColors.lightGreen,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Text(
                  'dash_class_location'.tr(),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
              Text(
                'dash_check_in'.tr(),
                style: theme.textTheme.labelMedium?.copyWith(
                  color: AppColors.lightGreen,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Divider(color: AppColors.white.withValues(alpha: .2), height: 1),
          const SizedBox(height: 10),
          _upcomingClass(
            context,
            time: '12:30 PM',
            title: 'dash_next_class_database'.tr(),
            room: 'dash_room_database'.tr(),
          ),
          const SizedBox(height: 8),
          _upcomingClass(
            context,
            time: '2:00 PM',
            title: 'dash_next_class_ai'.tr(),
            room: 'dash_room_ai'.tr(),
          ),
        ],
      ),
    );
  }

  Widget _upcomingClass(
    BuildContext context, {
    required String time,
    required String title,
    required String room,
  }) => Row(
    children: [
      SizedBox(
        width: 66,
        child: Text(
          time,
          style: Theme.of(context).textTheme.labelSmall
              ?.copyWith(color: AppColors.lightGreen),
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelSmall
                  ?.copyWith(color: AppColors.white),
            ),
            Text(
              room,
              style: Theme.of(context).textTheme.bodySmall
                  ?.copyWith(color: AppColors.white.withValues(alpha: .7)),
            ),
          ],
        ),
      ),
    ],
  );
}
