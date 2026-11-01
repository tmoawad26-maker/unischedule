import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/features/home/presentation/views/widgets/status_pill.dart';
import 'package:unischedule/features/home/presentation/views/widgets/dashboard_sample_data.dart';
import 'package:unischedule/features/home/presentation/views/widgets/surface_tile.dart';

class AssignmentTile extends StatelessWidget {
  const AssignmentTile({super.key, required this.item});
  final DashboardItem item;
  @override
  Widget build(BuildContext context) => SurfaceTile(
    icon: item.icon,
    iconColor: item.color,
    title: item.title.tr(),
    subtitle: item.subtitle.tr(),
    trailing: StatusPill(label: item.badge!.tr(), color: item.color),
  );
}
