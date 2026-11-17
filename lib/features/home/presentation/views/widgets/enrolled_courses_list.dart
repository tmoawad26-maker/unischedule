import 'package:flutter/material.dart';
import 'package:unischedule/features/home/models/dashboard_sample_data.dart';
import 'package:unischedule/features/home/presentation/views/widgets/course_tile.dart';

class EnrolledCoursesList extends StatelessWidget {
  const EnrolledCoursesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
    );
  }
}
