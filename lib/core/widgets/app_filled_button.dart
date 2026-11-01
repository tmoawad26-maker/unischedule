import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
  });

  final String label;
  final VoidCallback onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: double.infinity,
      height: 48,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: theme.colorScheme.primary,
          foregroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label, style: theme.textTheme.titleSmall?.copyWith(
              color: AppColors.white
            )),
            if (icon != null) ...[
              const SizedBox(width: 4),
              Icon(icon, size: 18),
            ],
          ],
        ),
      ),
    );
  }
}
