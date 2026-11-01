import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../models/on_boarding_model.dart';
import 'custom_list_tile_info.dart';
import 'on_boarding_header.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.theme,
    required this.model,
    required this.pageIndex,
    required this.onBack,
    required this.onSkip,
  });

  final ThemeData theme;
  final OnBoardingModel model;
  final int pageIndex;
  final VoidCallback onBack;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          OnBoardingHeader(
            theme: theme,
            pageIndex: pageIndex,
            onBack: onBack,
            onSkip: onSkip,
          ),
          SizedBox(height: 12.h),
          Image.asset(model.imagePath, fit: BoxFit.contain),
          SizedBox(height: 12.h),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              decoration: BoxDecoration(
                color: AppColors.lightGreen,
                borderRadius: BorderRadius.circular(999),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.bolt_sharp, color: AppColors.green, size: 16),
                  SizedBox(width: 4.w),
                  Text(
                    model.stepHeader.tr(),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 6.h),
          Text(
            model.title.tr(),
            textAlign: TextAlign.center,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 4.h),
          Text(
            model.subTitle.tr(),
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 12.h),
          ...model.cards.map(
            (card) => Padding(
              padding: EdgeInsets.only(bottom: 6.h),
              child: CustomListTileInfo(
                theme: theme,
                title: card.title.tr(),
                titleHistory: card.badgeText?.tr(),
                subTitle: card.subTitle.tr(),
                imagePath: card.iconPath,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
