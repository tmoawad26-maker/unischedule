import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/widgets/app_filled_button.dart';
import 'package:unischedule/core/widgets/app_text_form_field.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({super.key});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: theme.colorScheme.surface,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppTextFormField(
              controller: _emailController,
              label: 'university_email_label'.tr(),
              hintText: 'university_email_hint'.tr(),
              prefixIcon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              labelTrailing: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 7,
                  vertical: 3,
                ),
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'official_badge'.tr(),
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onSecondaryContainer,
                  ),
                ),
              ),
              suffixIcon: Icon(
                Icons.cancel_outlined,
                size: 18,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 8),
            _buildHint(
              context,
              icon: Icons.verified_user_outlined,
              text: 'university_email_hint_note'.tr(),
            ),
            const SizedBox(height: 8),
            _buildHint(
              context,
              icon: Icons.info_outline,
              text: 'reset_directory_note'.tr(),
              highlighted: true,
            ),
            const SizedBox(height: 10),
            AppFilledButton(
              label: 'send_reset_link'.tr(),
              icon: Icons.send_outlined,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHint(
    BuildContext context, {
    required IconData icon,
    required String text,
    bool highlighted = false,
  }) {
    final theme = Theme.of(context);
    final hintColor = highlighted
        ? theme.colorScheme.secondaryContainer
        : theme.colorScheme.surfaceContainerLow;

    return Container(
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: hintColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 16,
            color: highlighted
                ? theme.colorScheme.onSecondaryContainer
                : theme.colorScheme.secondary,
          ),
          const SizedBox(width: 7),
          Expanded(child: Text(text, style: theme.textTheme.bodySmall)),
        ],
      ),
    );
  }
}
