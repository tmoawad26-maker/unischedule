import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:unischedule/features/sign_in/presentation/views/widgets/access_control_card.dart';
import 'package:unischedule/features/sign_in/presentation/views/widgets/sign_in_footer.dart';
import 'package:unischedule/features/sign_in/presentation/views/widgets/sign_in_form.dart';
import 'package:unischedule/features/sign_in/presentation/views/widgets/sign_in_header.dart';
import 'package:unischedule/features/sign_in/presentation/views/widgets/sign_in_welcome.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 460),
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
              child: Column(
                children: [
                  const SignInHeader(),
                  const SizedBox(height: 16),
                  const SignInWelcome(),
                  const SizedBox(height: 14),
                  SignInForm(
                    onValidSubmit: () => _showMessage(
                      context,
                      'sign_in_no_backend_message'.tr(),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const AccessControlCard(),
                  const SizedBox(height: 14),
                  SignInFooter(
                    onContactHelpdesk: () => _showMessage(
                      context,
                      'helpdesk_unavailable'.tr(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }
}
