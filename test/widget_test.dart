import 'package:flutter_test/flutter_test.dart';
import 'package:unischedule/core/utils/login_validator.dart';

void main() {
  group('LoginValidator', () {
    test('requires a university ID and rejects whitespace-only input', () {
      expect(
        LoginValidator.validateUniversityId(null),
        'validation_university_id_required',
      );
      expect(
        LoginValidator.validateUniversityId('  '),
        'validation_university_id_required',
      );
      expect(LoginValidator.validateUniversityId('20240125'), isNull);
    });

    test('requires a password but accepts non-empty input', () {
      expect(
        LoginValidator.validatePassword(null),
        'validation_password_required',
      );
      expect(
        LoginValidator.validatePassword(''),
        'validation_password_required',
      );
      expect(LoginValidator.validatePassword('secret'), isNull);
    });
  });
}
