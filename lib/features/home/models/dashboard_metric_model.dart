import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class DashboardMetricModel {
  const DashboardMetricModel({
    required this.label,
    required this.percentageValue,
    required this.detail,
    required this.icon,
    this.valueColor = AppColors.green,
  });

  final String label;
  final String percentageValue;
  final String detail;
  final IconData icon;
  final Color valueColor;
  static List<DashboardMetricModel> metrics = [
    DashboardMetricModel(
      icon: Icons.badge_outlined,
      label: 'dash_attendance'.tr(),
      percentageValue: '96.4%',
      detail: 'dash_attendance_status'.tr(),
    ),
    DashboardMetricModel(
      icon: Icons.star_border,
      label: 'dash_cgpa'.tr(),
      percentageValue: '3.84',
      detail: 'dash_cgpa_scale'.tr(),
      valueColor: AppColors.primary,
    ),
    DashboardMetricModel(
      icon: Icons.stars_outlined,
      label: 'dash_bonus_marks'.tr(),
      percentageValue: '+7.5 pts',
      detail: 'dash_bonus_shortcut'.tr(),
    ),
  ];
}
