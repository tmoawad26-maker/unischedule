import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/features/home/presentation/views/widgets/assignment_tile.dart';
import 'package:unischedule/features/home/presentation/views/widgets/attendance_card.dart';
import 'package:unischedule/features/home/presentation/views/widgets/course_tile.dart';
import 'package:unischedule/features/home/presentation/views/widgets/dashboard_header.dart';
import 'package:unischedule/features/home/presentation/views/widgets/dashboard_sample_data.dart';
import 'package:unischedule/features/home/presentation/views/widgets/dashboard_section.dart';
import 'package:unischedule/features/home/presentation/views/widgets/lab_status_card.dart';
import 'package:unischedule/features/home/presentation/views/widgets/notification_tile.dart';
import 'package:unischedule/features/home/presentation/views/widgets/smart_schedule_note.dart';
import 'package:unischedule/features/home/presentation/views/widgets/today_schedule_card.dart';
import 'package:unischedule/features/home/presentation/views/widgets/weekly_schedule_strip.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        children: [
          const DashboardHeader(),
          const SizedBox(height: 18),
          const TodayScheduleCard(),
          const SizedBox(height: 16),
          DashboardSection(
            title: 'dash_week_title'.tr(),
            icon: Icons.calendar_today_outlined,
            action: 'dash_view_full'.tr(),
            child: const WeeklyScheduleStrip(),
          ),
          DashboardSection(
            title: 'dash_assignments_title'.tr(),
            icon: Icons.assignment_outlined,
            action: 'dash_view_all'.tr(),
            child: Column(
              children: dashboardAssignments
                  .map((item) => AssignmentTile(item: item))
                  .toList(),
            ),
          ),
          DashboardSection(
            title: 'dash_courses_title'.tr(),
            icon: Icons.school_outlined,
            action: 'dash_view_all'.tr(),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dashboardCourses.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.25,
              ),
              itemBuilder: (context, index) =>
                  CourseTile(item: dashboardCourses[index]),
            ),
          ),
          DashboardSection(
            title: 'dash_lab_title'.tr(),
            icon: Icons.memory_outlined,
            badge: 'dash_hardware_alert'.tr(),
            child: const LabStatusCard(),
          ),
          DashboardSection(
            title: 'dash_attendance_title'.tr(),
            icon: Icons.analytics_outlined,
            action: 'dash_full_record'.tr(),
            child: const AttendanceCard(),
          ),
          DashboardSection(
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
          const SizedBox(height: 12),
          const SmartScheduleNote(),
        ],
      ),
    ),
  );
}
