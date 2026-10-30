import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unischedule/core/routing/routes.dart';
import 'package:unischedule/features/onboarding/presentation/views/widgets/on_boarding_widget.dart';
import 'package:unischedule/features/onboarding/models/on_boarding_model.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.controller,
    this.onPageChanged,
  });

  final PageController controller;
  final ValueChanged<int>? onPageChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PageView.builder(
        controller: controller,
        onPageChanged: onPageChanged,
        itemCount: OnBoardingModel.pages.length,
        itemBuilder: (context, index) {
          return OnBoardingWidget(
            theme: theme,
            model: OnBoardingModel.pages[index],
            pageIndex: index,
            onBack: () => controller.previousPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            ),
            onSkip: () => navigateToHome(context)
          );
        },

    );
  }

  void navigateToHome(BuildContext context) => context.go(Routes.home);
}
