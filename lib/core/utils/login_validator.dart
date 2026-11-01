class LoginValidator {
  const LoginValidator._();
  static final  RegExp _cardNumberRegex = RegExp(r'^\d{14}$');

  static String? validateUniversityId(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'validation_university_id_required';
    }
    if (!_cardNumberRegex.hasMatch(value)) {
      return 'validation_university_id_invalid';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'validation_password_required';
    }
    if(!_cardNumberRegex.hasMatch(value)){
      return 'validation_password_required';
    }
    return null;
  }
}
