import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/home/presentation/views/widgets/dashboard_metric.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({super.key});

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: DashboardMetric(
          icon: Icons.badge_outlined,
          label: 'dash_attendance'.tr(),
          value: '96.4%',
          detail: 'dash_attendance_status'.tr(),
        ),
      ),
      const SizedBox(width: 7),
      Expanded(
        child: DashboardMetric(
          icon: Icons.star_border,
          label: 'dash_cgpa'.tr(),
          value: '3.84',
          detail: 'dash_cgpa_scale'.tr(),
          valueColor: AppColors.primary,
        ),
      ),
      const SizedBox(width: 7),
      Expanded(
        child: DashboardMetric(
          icon: Icons.stars_outlined,
          label: 'dash_bonus_marks'.tr(),
          value: '+7.5 pts',
          detail: 'dash_bonus_shortcut'.tr(),
        ),
      ),
    ],
  );
}
