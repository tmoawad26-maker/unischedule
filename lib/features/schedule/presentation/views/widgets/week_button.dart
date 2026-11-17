import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class WeekButton extends StatelessWidget {
  const WeekButton({super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 30,
    height: 34,
    child: IconButton.filledTonal(
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,// Adjust the visual density to make the button more compact
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      style: IconButton.styleFrom(
        backgroundColor: AppColors.surfaceLightBlue,
        foregroundColor: AppColors.primary,
      ),
    ),
  );
}
