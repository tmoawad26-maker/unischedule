import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomListTileInfo extends StatelessWidget {
  const CustomListTileInfo({
    super.key,
    required this.theme,
    required this.title,
    this.titleHistory,
    required this.subTitle,
    required this.imagePath, this.iconColor,
  });

  final ThemeData theme;
  final String title;
  final String? titleHistory;
  final String subTitle;
  final String imagePath;
  final Color ?iconColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      leading: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: iconColor ?? AppColors.lightBlue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Image.asset(imagePath),
      ),
      title: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8.w,
        runSpacing: 4.h,
        children: [
          Text(
            title,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppColors.scheduleColor,
            ),
          ),
          if (titleHistory?.isNotEmpty ?? false) ...[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                color: titleHistory == 'LIVE' || titleHistory == 'مباشر'
                    ? AppColors.lightRed
                    : AppColors.lightBlue,
                borderRadius: BorderRadius.circular(9999),
              ),
              child: Text(
                titleHistory!,
                style: theme.textTheme.labelMedium?.copyWith(
                  color: AppColors.scheduleColor,
                ),
              ),
            ),
          ],
        ],
      ),
      subtitle: Text(
        subTitle,
        style: theme.textTheme.bodySmall,
      ),
    );
  }
}
