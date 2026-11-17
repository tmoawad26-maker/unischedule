import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/schedule/models/session_model.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/category_session.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/details_line.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/hardware_status.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/session_status_indicator.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/session_upcoming.dart';

class ScheduleSessionInfo extends StatelessWidget {
  const ScheduleSessionInfo({
    super.key,
    required this.accent,
    required this.isLab,
    required this.session,
  });

  final Color accent;
  final bool isLab;
  final SessionModel session;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2.r),
      padding: EdgeInsets.all(11.r),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
        border: BorderDirectional(start: BorderSide(color: accent, width: 7)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x11002548),
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CategorySession(isLab: isLab, accent: accent),
              const Spacer(),
              if (session.upcoming)
                SessionUpcoming(),
            ],
          ),
          const SizedBox(height: 6),
          SessionStatusIndicator(isLab: isLab, accent: accent),
          const SizedBox(height: 4),
          Text(
            session.title.tr(),
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: AppColors.secondary,
              fontWeight: FontWeight.w700,
              height: 1.15,
            ),
          ),
          const SizedBox(height: 7),
          DetailLine(icon: Icons.location_on_outlined, text: session.room.tr()),
          const SizedBox(height: 3),
          DetailLine(icon: Icons.person_outline, text: session.instructor.tr()),
          if (isLab) ...[
             SizedBox(height: 8.h),
            const HardwareStatus(),
             SizedBox(height: 7.h),
            SizedBox(
              width: double.infinity,
              height: 29.h,
              child: FilledButton.tonalIcon(
                onPressed: () {},
                icon: const Icon(Icons.checklist_rounded, size: 14),
                label: Text(
                  'schedule_lab_checklist'.tr(),
                  style: const TextStyle(fontSize: 10),
                ),
                style: FilledButton.styleFrom(
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                ),
              ),
            ),
          ] else ...[
            const Divider(height: 14),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'schedule_lecture_note'.tr(),
                    style: Theme.of(context).textTheme.labelSmall
                        ?.copyWith(color: AppColors.grey, fontSize: 9),
                  ),
                ),
                const Icon(
                  Icons.cloud_download_outlined,
                  size: 14,
                  color: AppColors.primary,
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}




