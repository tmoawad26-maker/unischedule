import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unischedule/core/routing/routes.dart';
import 'package:unischedule/features/splash/presentation/views/widgets/branding_widget.dart';
import 'package:unischedule/features/splash/presentation/views/widgets/splash_header.dart';
import 'package:unischedule/features/splash/presentation/views/widgets/splash_logo_widget.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomSplashBody extends StatefulWidget {
  const new({super.key});

  @override
  State<CustomSplashBody> createState() => _CustomSplashBodyState();
}

class _CustomSplashBodyState extends State<CustomSplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _progressAnimation;
  int percentageValue = 0;
  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    );
    _progressAnimation = _progressAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.fastOutSlowIn,
          ),
        );
        _progressAnimation.addListener(_listenToValue);
    _animationController.addStatusListener(_isCompleted);
    super.initState();
    // 3. Start the progress animation
    _animationController.forward();
  }

  void _isCompleted(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _navigateToOnBoarding();
    }
  }
  void _listenToValue() {
  percentageValue =  ( _progressAnimation.value*100).toInt();
  setState(() {

  });
  }
  void _navigateToOnBoarding() {
    if (!mounted) return;
    context.go(Routes.onBoarding);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.splashBackgroundColor1,
            AppColors.splashBackgroundColor2,
            AppColors.splashBackgroundColor3,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.5, 1.0],
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: .stretch,
          children: [
            SizedBox(height: 32),
            SplashHeader(theme: theme),
            Expanded(child: Center(child: SplashLogoWidget())),
            BrandingWidget(animationController: _animationController,
                percentageValue: percentageValue,
                progressAnimation: _progressAnimation, theme: theme)
          ],
        ),
      ),
    );
  }
}

