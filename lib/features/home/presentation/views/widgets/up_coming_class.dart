import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class UpComingClass extends StatelessWidget {
  const UpComingClass({
    super.key,
    required this.time,
    required this.title,
    required this.room, required this.themeData,
  });

  final String time;
  final String title;
  final String room;
  final ThemeData themeData;
  @override
  Widget build(BuildContext context) => Row(
    children: [
      SizedBox(
        width: 66,
        child: Text(
          time,
          style: themeData.textTheme.labelSmall
              ?.copyWith(color: AppColors.lightGreen),
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: themeData.textTheme.labelSmall
                  ?.copyWith(color: AppColors.white),
            ),
            Text(
              room,
              style: themeData.textTheme.bodySmall
                  ?.copyWith(color: AppColors.white.withValues(alpha: .7)),
            ),
          ],
        ),
      ),
    ],
  );
}
