import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:unischedule/core/routing/routes.dart';
import 'package:unischedule/core/utils/login_validator.dart';
import 'package:unischedule/core/widgets/app_filled_button.dart';
import 'package:unischedule/core/widgets/app_text_form_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key, required this.onValidSubmit});

  final VoidCallback onValidSubmit;

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final _universityIdController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _rememberMe = false;

  @override
  void dispose() {
    _universityIdController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: theme.colorScheme.surface,
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppTextFormField(
                controller: _universityIdController,
                label: 'university_id_label'.tr(),
                hintText: 'university_id_hint'.tr(),
                prefixIcon: Icons.badge_outlined,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                validator: (value) =>
                    LoginValidator.validateUniversityId(value)?.tr(),
                suffixIcon: IconButton(
                  tooltip: 'clear_field'.tr(),
                  onPressed: _universityIdController.clear,
                  icon: const Icon(Icons.cancel_outlined, size: 18),
                ),
              ),
              const SizedBox(height: 10),
              AppTextFormField(
                controller: _passwordController,
                label: 'password_label'.tr(),
                hintText: 'password_hint'.tr(),
                prefixIcon: Icons.lock_outline,
                obscureText: _obscurePassword,
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (_) => _submit(),
                validator: (value) =>
                    LoginValidator.validatePassword(value)?.tr(),
                labelTrailing: Text(
                  'sso_protected'.tr(),
                  style: theme.textTheme.labelMedium,
                ),
                suffixIcon: IconButton(
                  tooltip: _obscurePassword
                      ? 'show_password'.tr()
                      : 'hide_password'.tr(),
                  onPressed: () {
                    setState(() => _obscurePassword = !_obscurePassword);
                  },
                  icon: Icon(
                    _obscurePassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    size: 19,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() => _rememberMe = value ?? false);
                    },
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => _rememberMe = !_rememberMe),
                      child: Text(
                        'remember_me'.tr(),
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => context.push(Routes.forgetPassword),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text('forgot_password'.tr()),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              AppFilledButton(
                label: 'sign_in_button'.tr(),
                icon: Icons.arrow_forward,
                onPressed: _submit,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      widget.onValidSubmit();
    }
  }
}
