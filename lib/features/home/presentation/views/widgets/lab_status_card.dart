import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/home/presentation/views/widgets/lab_metric.dart';
import 'package:unischedule/features/home/presentation/views/widgets/lab_required_lap_top.dart';
import 'package:unischedule/features/home/presentation/views/widgets/status_pill.dart';

class LabStatusCard extends StatelessWidget {
  const LabStatusCard({super.key});

  @override
  Widget build(BuildContext context) => Container(
    padding:  EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(16.r),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'dash_lab_name'.tr(),
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            StatusPill(label: 'dash_online'.tr(), color: AppColors.green),
          ],
        ),
         SizedBox(height: 3.h),
        Text(
          'dash_lab_location'.tr(),
          style: Theme.of(context).textTheme.bodySmall,
        ),
         SizedBox(height: 10.h),
        Row(
          children: [
            Expanded(
              child: LabMetric(icon: Icons.desktop_windows_outlined, 
              label: 'dash_available_pcs'.tr(), value: '16 / 32 ${'dash_ready'.tr()}'),
            ),
             SizedBox(width: 8.w),
            Expanded(
              child: LabMetric(icon: Icons.wifi,
               label: 'dash_campus_wifi'.tr(), value: '240 Mbps (5GHz)',
               labelStyle: Theme.of(context).textTheme.titleSmall
               ),
            ),
          ],
        ),
         SizedBox(height: 8.h),
        LabRequiredLapTop(),
      ],
    ),
  );
}



