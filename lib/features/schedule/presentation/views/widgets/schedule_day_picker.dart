import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class ScheduleDayPicker extends StatelessWidget {
  const ScheduleDayPicker({super.key, required this.selectedIndex, required this.onSelected});

  final int selectedIndex;
  final ValueChanged<int> onSelected;

  static const _days = [
    ('schedule_sun', '20', 'schedule_few_classes'),
    ('schedule_mon', '21', 'schedule_three_classes'),
    ('schedule_tue', '22', 'schedule_four_classes'),
    ('schedule_wed', '23', 'schedule_rapid'),
    ('schedule_thu', '24', 'schedule_two_classes'),
  ];

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 88,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: _days.length,
      separatorBuilder: (_, __) => const SizedBox(width: 7),
      itemBuilder: (context, index) {
        final day = _days[index];
        final selected = index == selectedIndex;
        final background = index == 3 ? AppColors.lightGreen : AppColors.white;
        final foreground = selected ? Colors.white : AppColors.primary;
        return InkWell(
          borderRadius: BorderRadius.circular(13),
          onTap: () => onSelected(index),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            width: 67,
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
            decoration: BoxDecoration(
              color: selected ? AppColors.primary : background,
              borderRadius: BorderRadius.circular(13),
              border: Border.all(color: selected ? AppColors.primary : AppColors.surfaceLightBlue),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(day.$1.tr().toUpperCase(), style: Theme.of(context).textTheme.labelSmall?.copyWith(color: foreground, fontWeight: FontWeight.w600)),
                Text(day.$2, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: foreground, fontWeight: FontWeight.w700)),
                Text(day.$3.tr(), maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: selected ? AppColors.lightGreen : AppColors.grey, fontSize: 8)),
              ],
            ),
          ),
        );
      },
    ),
  );
}
