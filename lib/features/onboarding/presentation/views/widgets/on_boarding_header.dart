import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_text_button.dart';

class OnBoardingHeader extends StatelessWidget {
  const OnBoardingHeader({
    super.key,
    required this.theme,
    required this.pageIndex,
    required this.onBack,
    required this.onSkip,
  });

  final ThemeData theme;
  final int pageIndex;
  final VoidCallback onBack;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    final brand = Container(
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.lightBlue,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.school, color: AppColors.scheduleColor, size: 14.r),
          SizedBox(width: 5.w),
          Text(
            'uniSchedule'.tr(),
            style: theme.textTheme.labelSmall?.copyWith(
              color: AppColors.scheduleColor,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );

    final left = pageIndex == 0
        ? brand
        : IconButton(
            onPressed: onBack,
            style: IconButton.styleFrom(
              backgroundColor: AppColors.lightBlue,
              minimumSize: Size(38.r, 38.r),
              fixedSize: Size(38.r, 38.r),
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
            icon: const Icon(Icons.arrow_back, size: 18),
          );

    final right = pageIndex == 2
        ? brand
        : CustomTextButton(
            theme: theme,
            onPressed: onSkip,
            isPill: pageIndex == 1,
          );

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [left, right],
    );
  }
}
