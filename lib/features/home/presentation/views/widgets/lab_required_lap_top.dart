import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class LabRequiredLapTop extends StatelessWidget {
  const LabRequiredLapTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(11.r),
      decoration: BoxDecoration(
        color: AppColors.surfaceLightBlue,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.laptop_mac, size: 18, color: AppColors.red),
              SizedBox(width: 5.w),
              const Icon(
                Icons.warning_amber,
                size: 16,
                color: AppColors.warningColor,
              ),
              SizedBox(width: 4.w),
              Expanded(
                child: Text(
                  'dash_byod_title'.tr(),
                  style: Theme.of(context).textTheme.titleSmall
                      ?.copyWith(color: AppColors.red),
                ),
              ),
            ],
          ),
          SizedBox(height: 1.7.h),
          Text.rich(
            TextSpan(
              style: Theme.of(context).textTheme.bodySmall,
              children: _buildDescriptionTextSpans(context),
          ),
          )
        ],
      ),
    );
  }
  List<InlineSpan> _buildDescriptionTextSpans(BuildContext context) {
    List<InlineSpan> textSpans = [
      TextSpan(text: 'dash_byod_desc'.tr()),
      TextSpan(
        text: 'dash_byod_desc_2'.tr(),
        style: Theme.of(context).textTheme.bodySmall
            ?.copyWith(color: AppColors.secondary, fontWeight: FontWeight.w600),
      ),
      TextSpan(text: 'dash_byod_desc_3'.tr()),
      TextSpan(
        text: 'dash_byod_desc_4'.tr(),
        style: Theme.of(context).textTheme.bodySmall
            ?.copyWith(color: AppColors.secondary, fontWeight: FontWeight.w600),
      ),
      TextSpan(text: 'dash_byod_desc_5'.tr()),
    ];
    return textSpans;
  }
}
