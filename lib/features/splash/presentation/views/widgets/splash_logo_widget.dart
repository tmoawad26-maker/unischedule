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
          top: 120,
          right: 66,
          child: Align(
            alignment: Alignment.center,
            child: Container(
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
              child: Image.asset(Assets.imagesSleekConcentricGlassContainer),
            ),
          ),
        ),
        Positioned(
          top: 105,
          right: 75,
          child: Image.asset(Assets.imagesElipseDashed),
        ),
        Positioned(
          top: 45,
          right: 20,
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(Assets.imagesElipse1),
          ),
        ),
        Positioned(
          top: 20,
          child: Align(
            alignment: .center,
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
