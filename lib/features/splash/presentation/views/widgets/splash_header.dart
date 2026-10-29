import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class SplashHeader extends StatelessWidget {
  const new({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 59.01),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.splashHeaderColor,
        borderRadius: BorderRadius.circular(9999),
      ),
      child: Row(
        spacing: 10,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: AppColors.lightGreen,
              shape: BoxShape.circle,
            ),
          ),
          Text(
            "academicSync".tr(),
            style: theme.textTheme.labelSmall?.copyWith(
                color: AppColors.lightGreen,
                fontWeight: .w600,
                fontSize: 12,
                letterSpacing: .55
            ),
          ),
        ],
      ),
    );
  }
}
