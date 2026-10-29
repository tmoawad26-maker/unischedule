import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';

class LinearLoadingWidget extends StatelessWidget {
  const new({
    super.key,
    required this._animationController,
    required this._progressAnimation,
  });

  final AnimationController _animationController;
  final Animation<double> _progressAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, _) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: LinearProgressIndicator(
            value: _progressAnimation.value,
            backgroundColor: Colors.grey[200],
            // controller: _animationController,
            borderRadius: BorderRadius.circular(999),
            minHeight: 6,
            
            valueColor: const AlwaysStoppedAnimation<Color>(
              AppColors.lightGreen,
            ),
          ),
        );
      },
    );
  }
}
