import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/schedule/models/session_model.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/schedule_session_info.dart';
class ScheduleSessionCard extends StatelessWidget {
  const ScheduleSessionCard({super.key, required this.session});

  final SessionModel session;

  @override
  Widget build(BuildContext context) {
    final isLab = session.kind == 2;
    final accent = isLab ? AppColors.green : AppColors.primary;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 44,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 4.h),
              Text(
                session.start,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                session.period.tr(),
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: AppColors.grey,
                  fontSize: 9,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                session.end,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: ScheduleSessionInfo(accent: accent, isLab: isLab, session: session),
        ),
      ],
    );
  }
}






