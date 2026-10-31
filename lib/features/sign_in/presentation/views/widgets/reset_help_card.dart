import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ResetHelpCard extends StatelessWidget {
  const ResetHelpCard({super.key, required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.support_agent_outlined,
                color: theme.colorScheme.primary,
                size: 18,
              ),
              const SizedBox(width: 6),
              Text('reset_help_title'.tr(), style: theme.textTheme.labelLarge),
            ],
          ),
          const SizedBox(height: 5),
          Text('reset_help_description'.tr(), style: theme.textTheme.bodySmall),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 7),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'reset_help_contact'.tr(),
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                Icon(
                  Icons.send_outlined,
                  color: theme.colorScheme.onSurfaceVariant,
                  size: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
