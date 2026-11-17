import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/home/models/dashboard_metric_model.dart';

class DashboardMetric extends StatelessWidget {
  const DashboardMetric({super.key, required this.model});

  final DashboardMetricModel model;

  @override
  Widget build(BuildContext context) => Container(
    padding: EdgeInsets.all(9.h),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(13.r),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                model.label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            Icon(model.icon, size: 15, color: model.valueColor),
          ],
        ),
        SizedBox(height: 5.h),
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            model.percentageValue,
            style: Theme.of(context).textTheme.titleMedium
                ?.copyWith(color: model.valueColor),
          ),
        ),
        const SizedBox(height: 3),
        Text(
          model.detail,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall
              ?.copyWith(color: model.valueColor),
        ),
      ],
    ),
  );
}
