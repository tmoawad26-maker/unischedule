import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class DetailLine extends StatelessWidget {
  const DetailLine({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) => Row(
    children: [
      Icon(icon, size: 13, color: AppColors.grey),
      const SizedBox(width: 4),
      Expanded(
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
            color: AppColors.lightBlack,
            fontSize: 9,
          ),
        ),
      ),
    ],
  );
}
