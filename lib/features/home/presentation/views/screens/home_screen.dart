import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:unischedule/features/home/models/dashboard_section_model.dart';
import 'package:unischedule/features/home/presentation/views/widgets/dashboard_header.dart';
import 'package:unischedule/features/home/presentation/views/widgets/dashboard_section.dart';
import 'package:unischedule/features/home/presentation/views/widgets/smart_schedule_note.dart';
import 'package:unischedule/features/home/presentation/views/widgets/today_schedule_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sections = DashboardSectionModel.sections;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
          children: [
            const DashboardHeader(),
             SizedBox(height: 18.h),
            const TodayScheduleCard(),
             SizedBox(height: 16.h),
            ...sections.map((section) => DashboardSection(section: section)),
             SizedBox(height: 12.h),
            const SmartScheduleNote(),
          ],
        ),
      ),
    );
  }
}
