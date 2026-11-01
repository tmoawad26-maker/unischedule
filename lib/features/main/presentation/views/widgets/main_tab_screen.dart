import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/features/main/models/main_tab_model.dart';

class MainTabScreen extends StatelessWidget {
  const MainTabScreen({super.key, required this.model});

  final MainTabModel model;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: theme.colorScheme.secondaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(
                model.selectedIcon,
                size: 30,
                color: theme.colorScheme.onSecondaryContainer,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              model.titleKey.tr(),
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 6),
            Text(
              model.descriptionKey.tr(),
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
