import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unischedule/core/routing/routes.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        IconButton(
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go(Routes.onBoarding);
            }
          },
          tooltip: 'back'.tr(),
          icon: const Icon(Icons.arrow_back),
          visualDensity: VisualDensity.compact,
        ),
        Expanded(
          child: Text('sign_in_title'.tr(), style: theme.textTheme.titleMedium),
        ),
        OutlinedButton.icon(
          onPressed: () async {
            final nextLocale = context.locale.languageCode == 'ar'
                ? const Locale('en')
                : const Locale('ar');
            await context.setLocale(nextLocale);
          },
          icon: const Icon(Icons.language, size: 18),
          label: Text('language_toggle_label'.tr()),
          style: OutlinedButton.styleFrom(
            foregroundColor: theme.colorScheme.primary,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            visualDensity: VisualDensity.compact,
          ),
        ),
      ],
    );
  }
}
