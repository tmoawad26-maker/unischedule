import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/home/models/dashboard_metric_model.dart';
import 'package:unischedule/features/home/presentation/views/widgets/dashboard_metric.dart';

class AttendanceCard extends StatelessWidget {
  const AttendanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var index = 0; index < DashboardMetricModel.metrics.length; index++) ...[
          if (index > 0)  SizedBox(width: 8.w),
          Expanded(child: DashboardMetric(model: DashboardMetricModel.metrics[index])),
        ],
      ],
    );
  }
}
