class ScheduleDayModel {
  const ScheduleDayModel({
    required this.label,
    required this.date,
    required this.classSummary,
  });

  final String label;
  final String date;
  final String classSummary;

  static const List<ScheduleDayModel> days = [
    ScheduleDayModel(
      label: 'schedule_sun',
      date: '20',
      classSummary: 'schedule_few_classes',
    ),
    ScheduleDayModel(
      label: 'schedule_mon',
      date: '21',
      classSummary: 'schedule_three_classes',
    ),
    ScheduleDayModel(
      label: 'schedule_tue',
      date: '22',
      classSummary: 'schedule_four_classes',
    ),
    ScheduleDayModel(
      label: 'schedule_wed',
      date: '23',
      classSummary: 'schedule_rapid',
    ),
    ScheduleDayModel(
      label: 'schedule_thu',
      date: '24',
      classSummary: 'schedule_two_classes',
    ),
  ];
}
