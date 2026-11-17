import 'package:flutter/material.dart';
import 'package:unischedule/features/schedule/models/session_model.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/schedule_gap_indicator.dart';
import 'package:unischedule/features/schedule/presentation/views/widgets/schedule_session_card.dart';

class ScheduleTimeline extends StatelessWidget {
  const ScheduleTimeline({super.key, required this.filterIndex});

  final int filterIndex;

  @override
  Widget build(BuildContext context) {
    final sessions = SessionModel.sessions
        .where((session) => filterIndex == 0 || session.kind == filterIndex)
        .toList();

    return Column(
      children: [
        for (var index = 0; index < sessions.length; index++) ...[
          ScheduleSessionCard(session: sessions[index]),
          if (index < sessions.length - 1) const ScheduleGapIndicator(),
        ],
      ],
    );
  }
}
