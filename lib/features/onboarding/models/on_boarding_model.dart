import '../../../core/utils/assets.dart';
import 'on_boarding_card_model.dart';

class OnBoardingModel {
  const OnBoardingModel({
    required this.imagePath,
    required this.stepHeader,
    required this.title,
    required this.subTitle,
    required this.cards,
  });

  final String imagePath;
  final String stepHeader;
  final String title;
  final String subTitle;
  final List<OnBoardingCardModel> cards;

  static const List<OnBoardingModel> pages = [
    OnBoardingModel(
      imagePath: Assets.imagesHeroGraphicSection,
      stepHeader: 'step_header',
      title: 'feature_title',
      subTitle: 'feature_subtitle',
      cards: [
        OnBoardingCardModel(
          iconPath: Assets.iconsCustomerClustering,
          title: 'feature_tag',
          badgeText: 'days_per_week',
          subTitle: 'description',
        ),
        OnBoardingCardModel(
          iconPath: Assets.iconsCheck,
          title: 'guarantee_card_title',
          badgeText: 'badge',
          subTitle: 'guarantee_card_subtitle',
        ),
      ],
    ),
    OnBoardingModel(
      imagePath: Assets.imagesHeroVisualCardMargin,
      stepHeader: 'page_2_step_header',
      title: 'page_2_title',
      subTitle: 'page_2_subtitle',
      cards: [
        OnBoardingCardModel(
          iconPath: Assets.iconsLiveTerminal,
          title: 'card_1_title',
          badgeText: 'card_1_badge',
          subTitle: 'card_1_subtitle',
        ),
        OnBoardingCardModel(
          iconPath: Assets.iconsComputer,
          title: 'card_2_title',
          badgeText: 'card_2_badge',
          subTitle: 'card_2_subtitle',
        ),
      ],
    ),
    OnBoardingModel(
      imagePath: Assets.imagesSectionHeroVisualCard,
      stepHeader: 'page_3_step_header',
      title: 'page_3_title',
      subTitle: 'page_3_subtitle',
      cards: [
        OnBoardingCardModel(
          iconPath: Assets.iconsDayIc,
          title: 'page_3_card_1_title',
          badgeText: 'page_3_card_1_badge',
          subTitle: 'page_3_card_1_subtitle',
        ),
        OnBoardingCardModel(
          iconPath: Assets.iconsCheck,
          title: 'page_3_card_2_title',
          subTitle: 'page_3_card_2_subtitle',
        ),
      ],
    ),
  ];
}
