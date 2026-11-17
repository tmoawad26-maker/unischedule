import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/core/utils/app_colors.dart';

class ScheduleTimeline extends StatelessWidget {
  const ScheduleTimeline({super.key, required this.filterIndex});
  final int filterIndex;

  @override
  Widget build(BuildContext context) {
    final sessions = _sessions.where((session) => filterIndex == 0 || session.kind == filterIndex).toList();
    return Column(
      children: [
        for (var index = 0; index < sessions.length; index++) ...[
          ScheduleSessionCard(session: sessions[index]),
          if (index < sessions.length - 1) const _GapIndicator(),
        ],
      ],
    );
  }
}

class ScheduleSessionCard extends StatelessWidget {
  const ScheduleSessionCard({super.key, required this.session});
  final _Session session;

  @override
  Widget build(BuildContext context) {
    final accent = session.kind == 2 ? AppColors.green : AppColors.primary;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 44,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 4),
            Text(session.start, style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.primary, fontWeight: FontWeight.w800)),
            Text(session.period, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.grey, fontSize: 9)),
            const SizedBox(height: 10),
            Text(session.end, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.grey)),
          ]),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(bottom: 2),
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(14),
              border: BorderDirectional(
                start: BorderSide(color: accent, width: 7),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x11002548),
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                Flexible(child: _Tag(label: session.kind == 2 ? 'schedule_practical_lab' : 'schedule_theory_lecture', color: accent)),
                const Spacer(),
                if (session.upcoming) Row(children: [const Icon(Icons.access_time, size: 12, color: AppColors.grey), const SizedBox(width: 3), Text('schedule_upcoming'.tr(), style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.grey, fontSize: 9))]),
              ]),
              const SizedBox(height: 6),
              Row(children: [Icon(session.kind == 2 ? Icons.science_outlined : Icons.check_circle, size: 14, color: accent), const SizedBox(width: 4), Expanded(child: Text(session.kind == 2 ? 'schedule_lab_status'.tr() : 'schedule_attended'.tr(), style: Theme.of(context).textTheme.labelSmall?.copyWith(color: accent, fontWeight: FontWeight.w700)))]),
              const SizedBox(height: 4),
              Text(session.title.tr(), style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.secondary, fontWeight: FontWeight.w700, height: 1.15)),
              const SizedBox(height: 7),
              _DetailLine(icon: Icons.location_on_outlined, text: session.room.tr()),
              const SizedBox(height: 3),
              _DetailLine(icon: Icons.person_outline, text: session.instructor.tr()),
              if (session.kind == 2) ...[
                const SizedBox(height: 8),
                Container(padding: const EdgeInsets.all(8), decoration: BoxDecoration(color: AppColors.surfaceLightBlue, borderRadius: BorderRadius.circular(9)), child: Row(children: [const Icon(Icons.memory_outlined, size: 15, color: AppColors.green), const SizedBox(width: 6), Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('schedule_hardware_check'.tr(), style: Theme.of(context).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w700)), Text('schedule_hardware_status'.tr(), style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 9))])), const Icon(Icons.circle, size: 7, color: AppColors.green)])),
                const SizedBox(height: 7),
                SizedBox(width: double.infinity, height: 29, child: FilledButton.tonalIcon(onPressed: () {}, icon: const Icon(Icons.checklist_rounded, size: 14), label: Text('schedule_lab_checklist'.tr(), style: const TextStyle(fontSize: 10)), style: FilledButton.styleFrom(padding: EdgeInsets.zero, visualDensity: VisualDensity.compact))),
              ] else ...[
                const Divider(height: 14),
                Row(children: [Expanded(child: Text('schedule_lecture_note'.tr(), style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.grey, fontSize: 9))), const Icon(Icons.cloud_download_outlined, size: 14, color: AppColors.primary)]),
              ],
            ]),
          ),
        ),
      ],
    );
  }
}

class _Tag extends StatelessWidget {
  const _Tag({required this.label, required this.color});
  final String label;
  final Color color;
  @override
  Widget build(BuildContext context) => Container(padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3), decoration: BoxDecoration(color: color.withValues(alpha: .1), borderRadius: BorderRadius.circular(6)), child: Text(label.tr(), style: Theme.of(context).textTheme.labelSmall?.copyWith(color: color, fontSize: 8, fontWeight: FontWeight.w800)));
}

class _DetailLine extends StatelessWidget {
  const _DetailLine({required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) => Row(children: [Icon(icon, size: 13, color: AppColors.grey), const SizedBox(width: 4), Expanded(child: Text(text, maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.lightBlack, fontSize: 9)))]);
}

class _GapIndicator extends StatelessWidget {
  const _GapIndicator();
  @override
  Widget build(BuildContext context) => Padding(padding: const EdgeInsetsDirectional.only(start: 51, top: 3, bottom: 9), child: Row(children: [const Icon(Icons.more_horiz, size: 17, color: Color(0xff48C8C7)), const SizedBox(width: 8), Expanded(child: Text('schedule_transition'.tr(), style: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 9)))]));
}

class ConflictSummary extends StatelessWidget {
  const ConflictSummary({super.key});
  @override
  Widget build(BuildContext context) => Container(padding: const EdgeInsets.all(11), decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(12)), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [const Icon(Icons.verified_rounded, size: 17, color: Color(0xff42C8C3)), const SizedBox(width: 7), Flexible(child: Text('schedule_conflict_free'.tr(), textAlign: TextAlign.center, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: AppColors.primary, fontWeight: FontWeight.w700)))]));
}

class _Session {
  const _Session(this.start, this.period, this.end, this.title, this.room, this.instructor, this.kind, {this.upcoming = false});
  final String start, period, end, title, room, instructor;
  final int kind;
  final bool upcoming;
}

const _sessions = [
  _Session('08:30', 'schedule_am', '10:00', 'schedule_course_systems', 'schedule_room_a4', 'schedule_professor_mahmoud', 1),
  _Session('10:15', 'schedule_am', '12:00', 'schedule_course_mobile', 'schedule_room_lab3', 'schedule_assistant_sara', 2),
  _Session('01:30', 'schedule_pm', '03:00', 'schedule_course_ai', 'schedule_room_b28', 'schedule_professor_mostafa', 1, upcoming: true),
];
