import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/home/presentation/views/widgets/dashboard_sample_data.dart';

class CourseTile extends StatelessWidget {
  const CourseTile({super.key, required this.item});
  final DashboardItem item;
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(11),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(13),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(item.icon, size: 18, color: item.color),
            const Spacer(),
            const Icon(Icons.chevron_right, size: 18, color: AppColors.grey),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          item.title.tr(),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(height: 2),
        Text(
          item.subtitle.tr(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const Spacer(),
        Text(
          'dash_course_resources'.tr(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelSmall
              ?.copyWith(color: AppColors.green),
        ),
      ],
    ),
  );
}
