import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.theme,
    required this.onPressed,
    this.isPill = false,
  });

  final ThemeData theme;
  final VoidCallback onPressed;
  final bool isPill;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: isPill ? AppColors.lightBlue : Colors.transparent,
        foregroundColor: AppColors.scheduleColor,
        minimumSize: Size.zero,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: const StadiumBorder(),
      ),
      child: Text(
        'Skip'.tr(),
        style: theme.textTheme.labelMedium?.copyWith(
          color: isPill ? AppColors.scheduleColor : AppColors.textGreen,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
