class SessionModel {
  const SessionModel({
    required this.start,
    required this.period,
    required this.end,
    required this.title,
    required this.room,
    required this.instructor,
    required this.kind,
    this.upcoming = false,
  });

  final String start;
  final String period;
  final String end;
  final String title;
  final String room;
  final String instructor;
  final int kind;
  final bool upcoming;

  static const List<SessionModel> sessions = [
    SessionModel(
      start: '08:30',
      period: 'schedule_am',
      end: '10:00',
      title: 'schedule_course_systems',
      room: 'schedule_room_a4',
      instructor: 'schedule_professor_mahmoud',
      kind: 1,
    ),
    SessionModel(
      start: '10:15',
      period: 'schedule_am',
      end: '12:00',
      title: 'schedule_course_mobile',
      room: 'schedule_room_lab3',
      instructor: 'schedule_assistant_sara',
      kind: 2,
    ),
    SessionModel(
      start: '01:30',
      period: 'schedule_pm',
      end: '03:00',
      title: 'schedule_course_ai',
      room: 'schedule_room_b28',
      instructor: 'schedule_professor_mostafa',
      kind: 1,
      upcoming: true,
    ),
  ];
}
