import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

/// Demo dashboard content kept separate so it can later be replaced by app data.
class DashboardItem {
  const DashboardItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    this.badge,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final String? badge;
}

class DashboardDay {
  const DashboardDay(this.label, this.number, this.hasClass);
  final String label;
  final String number;
  final bool hasClass;
}

const dashboardWeek = [
  DashboardDay('dash_day_sun', '10', true),
  DashboardDay('dash_day_mon', '11', true),
  DashboardDay('dash_day_tue', '12', true),
  DashboardDay('dash_day_wed', '13', false),
  DashboardDay('dash_day_thu', '14', true),
];

const dashboardAssignments = [
  DashboardItem(
    title: 'dash_assignment_mobile',
    subtitle: 'dash_assignment_mobile_due',
    icon: Icons.assignment_outlined,
    color: AppColors.red,
    badge: 'dash_due_soon',
  ),
  DashboardItem(
    title: 'dash_assignment_database',
    subtitle: 'dash_assignment_database_due',
    icon: Icons.quiz_outlined,
    color: AppColors.green,
    badge: 'dash_due_tomorrow',
  ),
  DashboardItem(
    title: 'dash_assignment_ui',
    subtitle: 'dash_assignment_ui_due',
    icon: Icons.description_outlined,
    color: AppColors.primary,
    badge: 'dash_due_week',
  ),
];

const dashboardCourses = [
  DashboardItem(
    title: 'dash_course_mobile',
    subtitle: 'dash_course_mobile_info',
    icon: Icons.phone_android,
    color: AppColors.green,
  ),
  DashboardItem(
    title: 'dash_course_database',
    subtitle: 'dash_course_database_info',
    icon: Icons.storage_outlined,
    color: AppColors.primary,
  ),
  DashboardItem(
    title: 'dash_course_ai',
    subtitle: 'dash_course_ai_info',
    icon: Icons.memory_outlined,
    color: AppColors.textColorRed,
  ),
  DashboardItem(
    title: 'dash_course_systems',
    subtitle: 'dash_course_systems_info',
    icon: Icons.dns_outlined,
    color: AppColors.green,
  ),
];

const dashboardNotifications = [
  DashboardItem(
    title: 'dash_notification_room',
    subtitle: 'dash_notification_room_detail',
    icon: Icons.location_searching,
    color: AppColors.primary,
    badge: 'dash_time_15m',
  ),
  DashboardItem(
    title: 'dash_notification_quiz',
    subtitle: 'dash_notification_quiz_detail',
    icon: Icons.timer_outlined,
    color: AppColors.red,
    badge: 'dash_time_1h',
  ),
  DashboardItem(
    title: 'dash_notification_honors',
    subtitle: 'dash_notification_honors_detail',
    icon: Icons.campaign_outlined,
    color: AppColors.green,
    badge: 'dash_time_3h',
  ),
];
