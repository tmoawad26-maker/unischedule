import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/features/home/presentation/views/widgets/assignment_tile.dart';
import 'package:unischedule/features/home/presentation/views/widgets/attendance_card.dart';
import 'package:unischedule/features/home/presentation/views/widgets/course_tile.dart';
import 'package:unischedule/features/home/models/dashboard_sample_data.dart';
import 'package:unischedule/features/home/presentation/views/widgets/enrolled_courses_list.dart';
import 'package:unischedule/features/home/presentation/views/widgets/lab_status_card.dart';
import 'package:unischedule/features/home/presentation/views/widgets/notification_tile.dart';
import 'package:unischedule/features/home/presentation/views/widgets/weekly_schedule_strip.dart';

class DashboardSectionModel {
  const DashboardSectionModel({
    required this.title,
    required this.child,
    this.action,
    this.badge,
    this.icon,
  });

  final String title;
  final String? action;
  final String? badge;
  final IconData? icon;
  final Widget child;

  static List<DashboardSectionModel> get sections => [
    DashboardSectionModel(
      title: 'dash_week_title'.tr(),
      icon: Icons.calendar_today_outlined,
      action: 'dash_view_full'.tr(),
      child: const WeeklyScheduleStrip(),
    ),
    DashboardSectionModel(
      title: 'dash_assignments_title'.tr(),
      icon: Icons.assignment_outlined,
      action: 'dash_view_all'.tr(),
      child: Column(
        children: dashboardAssignments
            .map((item) => AssignmentTile(item: item))
            .toList(),
      ),
    ),
    DashboardSectionModel(
      title: 'dash_courses_title'.tr(),
      icon: Icons.school_outlined,
      action: 'dash_view_all'.tr(),
      child: const EnrolledCoursesList(),
    ),
    DashboardSectionModel(
      title: 'dash_lab_title'.tr(),
      icon: Icons.memory_outlined,
      badge: 'dash_hardware_alert'.tr(),
      child: const LabStatusCard(),
    ),
    DashboardSectionModel(
      title: 'dash_attendance_title'.tr(),
      icon: Icons.analytics_outlined,
      action: 'dash_full_record'.tr(),
      child: const AttendanceCard(),
    ),
    DashboardSectionModel(
      title: 'dash_notifications_title'.tr(),
      icon: Icons.notifications_none_outlined,
      action: 'dash_mark_all_read'.tr(),
      badge: 'dash_new_count'.tr(),
      child: Column(
        children: dashboardNotifications
            .map((item) => NotificationTile(item: item))
            .toList(),
      ),
    ),
  ];
}

