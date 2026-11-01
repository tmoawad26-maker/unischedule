import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unischedule/features/sign_in/presentation/views/widgets/forget_password_header.dart';
import 'package:unischedule/features/sign_in/presentation/views/widgets/reset_help_card.dart';
import 'package:unischedule/features/sign_in/presentation/views/widgets/reset_password_form.dart';
import 'package:unischedule/features/sign_in/presentation/views/widgets/verification_sent_card.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          tooltip: 'back'.tr(),
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text('password_reset_unavailable_title'.tr()),
        actions: const [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 16),
            child: CircleAvatar(child: Icon(Icons.person_outline)),
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 460),
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const ForgetPasswordHeader(),
                  const SizedBox(height: 16),
                  const ResetPasswordForm(),
                  const SizedBox(height: 12),
                  const VerificationSentCard(),
                  Align(
                    child: TextButton.icon(
                      onPressed: () => context.pop(),
                      icon: const Icon(Icons.arrow_back, size: 16),
                      label: Text('back_to_sign_in'.tr()),
                    ),
                  ),
                  const SizedBox(height: 8),
                  ResetHelpCard(theme: theme),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
