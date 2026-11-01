import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../utils/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.theme,
    required this.onPressed,
    required this.labelKey,
    this.isFinalPage = false,
  });

  final ThemeData theme;
  final VoidCallback onPressed;
  final String labelKey;
  final bool isFinalPage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 16.r),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 8.r),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(isFinalPage ? 16.r : 8.r),
          ),
          fixedSize: Size(double.infinity, isFinalPage ? 56.r : 44.r),
        ),
        child: Row(
          mainAxisAlignment: isFinalPage
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            if (isFinalPage) ...[
              const Icon(Icons.circle, color: AppColors.lightGreen, size: 10),
              SizedBox(width: 8.r),
            ],
            Text(
              labelKey.tr(),
              style: theme.textTheme.labelLarge?.copyWith(
                color: AppColors.white,
                fontSize: isFinalPage ? 18.sp : null,
              ),
            ),
            if (isFinalPage) const Spacer(),
            if (isFinalPage)
              Container(
                width: 42.r,
                height: 42.r,
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: AppColors.white,
                  size: 24,
                ),
              )
            else
              Icon(Icons.arrow_forward, color: AppColors.white),
          ],
        ),
      ),
    );
  }
}
