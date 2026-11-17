import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class SessionUpcoming extends StatelessWidget {
  const SessionUpcoming({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.access_time,
          size: 12,
          color: AppColors.grey,
        ),
         SizedBox(width: 3.w),
        Text(
          'schedule_upcoming'.tr(),
          style: Theme.of(context).textTheme.labelSmall
              ?.copyWith(color: AppColors.grey, fontSize: 9),
        ),
      ],
    );
  }
}
