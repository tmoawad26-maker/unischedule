import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/schedule_day_picker.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/schedule_filter_bar.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/schedule_header.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/conflict_summary.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/schedule_timeline.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/smart_timetable_notice.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/week_navigation.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  int _selectedDay = 1;
  int _selectedFilter = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        children: [
          const ScheduleHeader(),
           SizedBox(height: 18.h),
          WeekNavigation(onPrevious: () {}, onNext: () {}),
           SizedBox(height: 10.h),
          ScheduleDayPicker(
            selectedIndex: _selectedDay,
            onSelected: (index) => setState(() => _selectedDay = index),
          ),
           SizedBox(height: 14.h),
          ScheduleFilterBar(
            selectedIndex: _selectedFilter,
            onSelected: (index) => setState(() => _selectedFilter = index),
          ),
           SizedBox(height: 14.h),
          const SmartTimetableNotice(),
           SizedBox(height: 12.h),
          ScheduleTimeline(filterIndex: _selectedFilter),
           SizedBox(height: 12.h),
          const ConflictSummary(),
        ],
      ),
    ),
  );
}
