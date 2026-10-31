class LoginValidator {
  const LoginValidator._();

  static String? validateUniversityId(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'validation_university_id_required';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'validation_password_required';
    }
    return null;
  }
}
