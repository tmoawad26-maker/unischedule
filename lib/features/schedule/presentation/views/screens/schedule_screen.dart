import 'package:flutter/material.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/schedule_day_picker.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/schedule_filter_bar.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/schedule_header.dart';
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
          const SizedBox(height: 18),
          WeekNavigation(onPrevious: () {}, onNext: () {}),
          const SizedBox(height: 10),
          ScheduleDayPicker(
            selectedIndex: _selectedDay,
            onSelected: (index) => setState(() => _selectedDay = index),
          ),
          const SizedBox(height: 14),
          ScheduleFilterBar(
            selectedIndex: _selectedFilter,
            onSelected: (index) => setState(() => _selectedFilter = index),
          ),
          const SizedBox(height: 14),
          const SmartTimetableNotice(),
          const SizedBox(height: 12),
          ScheduleTimeline(filterIndex: _selectedFilter),
          const SizedBox(height: 12),
          const ConflictSummary(),
        ],
      ),
    ),
  );
}
