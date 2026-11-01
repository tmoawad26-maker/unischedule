import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class ScheduleFilterBar extends StatelessWidget {
  const ScheduleFilterBar({super.key, required this.selectedIndex, required this.onSelected});
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  static const _filters = ['schedule_filter_all', 'schedule_filter_lectures', 'schedule_filter_labs'];

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        for (var index = 0; index < _filters.length; index++) ...[
          if (index > 0) const SizedBox(width: 7),
          ChoiceChip(
            selected: index == selectedIndex,
            onSelected: (_) => onSelected(index),
            avatar: index == 0 ? const Icon(Icons.grid_view_rounded, size: 14) : null,
            label: Text(_filters[index].tr()),
            labelStyle: TextStyle(color: index == selectedIndex ? Colors.white : AppColors.primary, fontSize: 11, fontWeight: FontWeight.w600),
            backgroundColor: AppColors.white,
            selectedColor: AppColors.primary,
            side: BorderSide(color: index == selectedIndex ? AppColors.primary : AppColors.surfaceLightBlue),
            visualDensity: VisualDensity.compact,
            padding: const EdgeInsets.symmetric(horizontal: 3),
          ),
        ],
      ],
    ),
  );
}
