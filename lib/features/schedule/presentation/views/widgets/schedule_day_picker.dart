import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';
import 'package:unischedule/features/schedule/models/schedule_day_model.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/schedule_day_widget.dart';

class ScheduleDayPicker extends StatelessWidget {
  const ScheduleDayPicker({super.key, required this.selectedIndex, required this.onSelected});

  final int selectedIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 88,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: ScheduleDayModel.days.length,
      separatorBuilder: (_, _) => const SizedBox(width: 7),
      itemBuilder: (context, index) {
        final day = ScheduleDayModel.days[index];
        final selected = index == selectedIndex;
        final background = index == 3 ? AppColors.scheduleLightGreen : AppColors.white;
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
            child: ScheduleDayWidget(day: day, foreground: foreground, selected: selected),
          ),
        );
      },
    ),
  );
}

