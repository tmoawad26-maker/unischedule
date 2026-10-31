import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SignInFooter extends StatelessWidget {
  const SignInFooter({super.key, required this.onContactHelpdesk});

  final VoidCallback onContactHelpdesk;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Text(
          'sign_in_no_credentials'.tr(),
          textAlign: TextAlign.center,
          style: theme.textTheme.bodySmall,
        ),
        TextButton.icon(
          onPressed: onContactHelpdesk,
          icon: const Icon(Icons.support_agent_outlined, size: 17),
          label: Text('contact_helpdesk'.tr()),
          style: TextButton.styleFrom(
            foregroundColor: theme.colorScheme.secondary,
            padding: const EdgeInsets.symmetric(vertical: 4),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shield_outlined,
              size: 14,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(width: 4),
            Flexible(
              child: Text(
                'sign_in_security_note'.tr(),
                textAlign: TextAlign.center,
                style: theme.textTheme.labelSmall,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
