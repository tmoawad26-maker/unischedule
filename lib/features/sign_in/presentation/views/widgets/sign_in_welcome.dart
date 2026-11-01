import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SignInWelcome extends StatelessWidget {
  const SignInWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Container(
          width: 54,
          height: 54,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.primary.withValues(alpha: 0.16),
                blurRadius: 12,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Icon(
            Icons.calendar_month_outlined,
            color: theme.colorScheme.onPrimary,
            size: 28,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'sign_in_welcome'.tr(),
          textAlign: TextAlign.center,
          style: theme.textTheme.headlineMedium,
        ),
        const SizedBox(height: 2),
        Text(
          'sign_in_subtitle'.tr(),
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall,
        ),
      ],
    );
  }
}
