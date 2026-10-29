import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';
import 'linear_loading_widget.dart';

class BrandingWidget extends StatelessWidget {
  const BrandingWidget({super.key, required this.animationController, required this._progressAnimation, required this.theme, required this.percentageValue});
  final AnimationController animationController;
  final Animation<double> _progressAnimation;
  final ThemeData theme;
  final int percentageValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinearLoadingWidget(
          animationController: animationController,
          progressAnimation: _progressAnimation,
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              SvgPicture.asset("assets/icons/linear_loading_ic.svg"),
              Text(
                "resolving_prerequisites".tr(),
                style: theme.textTheme.bodySmall?.copyWith(
                  color: AppColors.lightGreen,
                ),
              ),
              Text(
                '$percentageValue%',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: AppColors.lightBlue,
                  fontWeight: .bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            '${"faculty_title".tr()} • ${"powered_by_brand".tr()}',
            style: theme.textTheme.labelSmall?.copyWith(
              color: AppColors.brandingColor,
            ),
          ),
        ),
      ],
    );
  }
}
