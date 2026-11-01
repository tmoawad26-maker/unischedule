import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_text_styles.dart';
import 'package:unischedule/core/utils/assets.dart';

import '../../../../../core/utils/app_colors.dart';

class SplashLogoWidget extends StatelessWidget {
  const SplashLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 45,
          right: 20,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(Assets.imagesElipse1),
              Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.lightGreen.withValues(
                      alpha: 0.35,
                    ), // Vibrant glow color
                    blurRadius: 110.0, // High blur to eliminate hard edges
                    spreadRadius: 5.0, // Spreads the glow outward evenly
                    offset: Offset.zero, // Cen
                  ),
                ],
              ),
              child: Container(
                        width: 112,
                        height: 112,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.green,
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(
                            color: AppColors.lightBlue.withValues(alpha: 0.65),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: AppColors.lightGreen,
                              blurRadius: 120,
                              offset: Offset(0, 0),
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.calendar_month_rounded,
                              color: AppColors.lightGreen,
                              size: 23,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'splash_square_title'.tr(),
                              textAlign: TextAlign.center,
                              style: AppTextStyles.bold11White.copyWith(
                                fontSize: 11,
                                height: 1.15,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              'splash_square_subtitle'.tr(),
                              textAlign: TextAlign.center,
                              style: AppTextStyles.bold11White.copyWith(
                                color: AppColors.lightBlue,
                                fontSize: 8,
                                height: 1.1,
                              ),
                            ),
                          ],
                        ),
                    ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 105,
          right: 75,
          child: Image.asset(Assets.imagesElipseDashed),
        ),
        Positioned(
          top: 20,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(Assets.imagesElipseBigger),
          ),
        ),
        Positioned(
          child: Image.asset(Assets.imagesElipseSolid, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 77,
          right: 80,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text('uniSchedule'.tr(), style: AppTextStyles.bold30White),
          ),
        ),
        Positioned(
          bottom: 5,
          right: 60,
          child: Column(
            children: [
              Text(
                "universityLife".tr(),
                style: AppTextStyles.medium15LightGreen,
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.splashLogoContainer,
                  borderRadius: BorderRadius.circular(999),
                ),
                child: Text(
                  '${"version".tr()} • ${"engineName".tr()}',
                  style: AppTextStyles.bold11White.copyWith(
                    color: AppColors.lightBlue,
                    fontWeight: .w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
