import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/home/presentation/views/widgets/circle_button.dart';
import 'package:unischedule/features/home/presentation/views/widgets/status_pill.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.school_outlined,
              color: AppColors.primary,
              size: 20,
            ),
            const SizedBox(width: 7),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('dash_brand'.tr(), style: theme.textTheme.titleSmall),
                  Text(
                    'dash_university'.tr(),
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            StatusPill(label: 'dash_term_badge'.tr(), color: AppColors.green),
            const SizedBox(width: 4),
            CircleButton(icon: Icons.notifications_none, badge: true),
            const SizedBox(width: 4),
            const CircleAvatar(
              radius: 19,
              backgroundColor: AppColors.surfaceLightBlue,
              child: Icon(Icons.person, color: AppColors.primary, size: 20),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text('dash_greeting'.tr(), style: theme.textTheme.titleLarge),
        Text('dash_student_name'.tr(), style: theme.textTheme.bodyMedium),
        const SizedBox(height: 8),
        Wrap(
          spacing: 6,
          runSpacing: 6,
          children: [
            StatusPill(label: 'faculty_title'.tr(), color: AppColors.primary),
            StatusPill(
              label: 'dash_classes_today'.tr(),
              color: AppColors.green,
            ),
          ],
        ),
      ],
    );
  }
}
