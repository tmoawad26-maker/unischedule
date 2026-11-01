import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:unischedule/core/routing/routes.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../../models/on_boarding_model.dart';
import 'custom_smooth_indicator.dart';
import 'on_boarding_page_view.dart';

class CustomOnBoardingBody extends StatefulWidget {
  const CustomOnBoardingBody({super.key});

  @override
  State<CustomOnBoardingBody> createState() => _CustomOnBoardingBodyState();
}

class _CustomOnBoardingBodyState extends State<CustomOnBoardingBody> {
  late final PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final pages = OnBoardingModel.pages;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: OnBoardingPageView(
                controller: _pageController,
                onPageChanged: (page) => setState(() => _currentPage = page),
              ),
            ),
            SizedBox(height: 6.h),
            CustomSmoothPageIndicator(
              controller: _pageController,
              count: pages.length,
            ),
            SizedBox(height: 8.h),
            PrimaryButton(
              theme: theme,
              labelKey: _currentPage == pages.length - 1
                  ? 'onboarding_cta'
                  : 'next_button',
              isFinalPage: _currentPage == pages.length - 1,
              onPressed: () {
                if (_currentPage < pages.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeIn,
                  );
                } else {
                  navigateToSignIn(context);
                }
              },
            ),
            SizedBox(height: 4.h),
            if (_currentPage == 0)
              Text(
                'swipe_hint'.tr(),
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall,
              )
            else if (_currentPage == 1)
              Text(
                'back_button'.tr(),
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall,
              )
            else
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.apartment, size: 14, color: AppColors.green),
                  SizedBox(width: 6.w),
                  Flexible(
                    child: Text.rich(
                      TextSpan(
                        text: 'institutional_sso_prompt'.tr(),
                        style: theme.textTheme.bodySmall,
                        children: [
                          TextSpan(
                            text: 'institutional_sso_link'.tr(),
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: AppColors.green,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  void navigateToSignIn(BuildContext context) {
    context.go(Routes.signIn);
  }
}
