import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({super.key, required this.icon, this.badge = false});
  final IconData icon;
  final bool badge;

  @override
  Widget build(BuildContext context) => Stack(
    clipBehavior: Clip.none,
    children: [
      IconButton.filledTonal(
        onPressed: () {},
        icon: Icon(icon),
        style: IconButton.styleFrom(
          foregroundColor: AppColors.primary,
          backgroundColor: AppColors.white,
        ),
      ),
      if (badge)
        PositionedDirectional(
          top: 7,
          end: 7,
          child: Container(
            width: 9,
            height: 9,
            decoration: const BoxDecoration(
              color: AppColors.red,
              shape: BoxShape.circle,
            ),
          ),
        ),
    ],
  );
}
