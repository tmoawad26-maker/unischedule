import 'package:easy_localization/easy_localization.dart';

import '../../../core/utils/assets.dart';
import 'on_boarding_card_model.dart';

/// Text fields contain Easy Localization keys so the active locale is resolved
/// when the onboarding page is built.
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

  static final List<OnBoardingModel> pages = [
    OnBoardingModel(
      imagePath: Assets.imagesHeroGraphicSection,
      stepHeader: 'step_header'.tr(),
      title: 'feature_title'.tr(),
      subTitle: 'feature_subtitle'.tr(),
      cards: [
        OnBoardingCardModel(
          iconPath: Assets.iconsCustomerClustering,
          title: 'feature_tag'.tr(),
          badgeText: 'days_per_week'.tr(),
          subTitle: 'description'.tr(),
        ),
        OnBoardingCardModel(
          iconPath: Assets.iconsCheck,
          title: 'guarantee_card_title'.tr(),
          badgeText: 'badge',
          subTitle: 'guarantee_card_subtitle'.tr(),
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
          title: 'card_1_title'.tr(),
          badgeText: 'card_1_badge'.tr(),
          subTitle: 'card_1_subtitle',
        ),
        OnBoardingCardModel(
          iconPath: Assets.iconsComputer,
          title: 'card_2_title'.tr(),
          badgeText: 'card_2_badge'.tr(),
          subTitle: 'card_2_subtitle'.tr(),
        ),
      ],
    ),
    OnBoardingModel(
      imagePath: Assets.imagesSectionHeroVisualCard,
      stepHeader: 'page_3_step_header'.tr(),
      title: 'page_3_title'.tr(),
      subTitle: 'page_3_subtitle'.tr(),
      cards: [
        OnBoardingCardModel(
          iconPath: Assets.iconsDayIc,
          title: 'page_3_card_1_title'.tr(),
          badgeText: 'page_3_card_1_badge'.tr(),
          subTitle: 'page_3_card_1_subtitle'.tr(),
        ),
        OnBoardingCardModel(
          iconPath: Assets.iconsCheck,
          title: 'page_3_card_2_title'.tr(),
          subTitle: 'page_3_card_2_subtitle'.tr(),
        ),
      ],
    ),
  ];
}
