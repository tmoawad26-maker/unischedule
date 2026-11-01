import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/home/presentation/views/widgets/status_pill.dart';

class LabStatusCard extends StatelessWidget {
  const LabStatusCard({super.key});

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                'dash_lab_name'.tr(),
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            StatusPill(label: 'dash_online'.tr(), color: AppColors.green),
          ],
        ),
        const SizedBox(height: 3),
        Text(
          'dash_lab_location'.tr(),
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: _labMetric(
                context,
                Icons.desktop_windows_outlined,
                'dash_available_pcs'.tr(),
                '16 / 32 ${'dash_ready'.tr()}',
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _labMetric(
                context,
                Icons.wifi,
                'dash_campus_wifi'.tr(),
                '240 Mbps (5GHz)',
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(11),
          decoration: BoxDecoration(
            color: AppColors.surfaceLightBlue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.laptop_mac, size: 18, color: AppColors.red),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.warning_amber,
                    size: 16,
                    color: AppColors.red,
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      'dash_byod_title'.tr(),
                      style: Theme.of(context).textTheme.titleSmall
                          ?.copyWith(color: AppColors.red),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                'dash_byod_detail'.tr(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget _labMetric(
    BuildContext context,
    IconData icon,
    String label,
    String value,
  ) => Container(
    padding: const EdgeInsets.all(9),
    decoration: BoxDecoration(
      color: AppColors.surfaceLightBlue,
      borderRadius: BorderRadius.circular(11),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 16, color: AppColors.primary),
            const SizedBox(width: 5),
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
        const SizedBox(height: 3),
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ],
    ),
  );
}
