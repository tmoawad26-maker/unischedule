class OnBoardingCardModel {
  final String iconPath;
  final String title;
  final String subTitle;
  final String? badgeText;

  const OnBoardingCardModel({
    required this.iconPath,
    required this.title,
    required this.subTitle,
    this.badgeText,
  });
}
