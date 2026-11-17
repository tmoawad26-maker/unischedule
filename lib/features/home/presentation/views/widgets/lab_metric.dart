import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class LabMetric extends StatelessWidget {
  const LabMetric({
    super.key,
    required this.icon,
    required this.label,
    required this.value, this.labelStyle,
  });


  final IconData icon;
  final String label;
  final String value;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) => Container(
    padding:  EdgeInsets.all(9.r),
    decoration: BoxDecoration(
      color: AppColors.surfaceLightBlue,
      borderRadius: BorderRadius.circular(11.r),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 16, color: AppColors.primary),
             SizedBox(width: 5.w),
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: labelStyle ?? Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
         SizedBox(height: 3.h),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: labelStyle ,
        ),
      ],
    ),
  );
}
