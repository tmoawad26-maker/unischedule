# Repository Guidelines

## Project Structure & Module Organization

UniSchedule is a Flutter application written in Dart. App entry points are `lib/main.dart` and `lib/unishedule_app.dart`. Shared infrastructure lives in `lib/core/` (constants, routing, theme, providers, utilities, and reusable widgets); user-facing screens are grouped by feature under `lib/features/` (for example, `sign_in`, `onboarding`, `home`, and `schedule`). Keep feature-specific screens and widgets in that feature's `presentation/views/` tree. Store images and icons in `assets/images/` and `assets/icons/`, and English/Arabic translations in `assets/lang/`. Tests belong in `test/`; platform launchers are in `android/`, `ios/`, `web/`, and the other platform directories.

## Build, Test, and Development Commands

- `flutter pub get` resolves the dependencies in `pubspec.yaml`.
- `flutter run` launches the app on the selected connected device or emulator.
- `flutter analyze` runs Dart and Flutter static analysis using `analysis_options.yaml`.
- `flutter test` runs the unit and widget tests in `test/`.
- `flutter build <platform>` creates a release build, such as `flutter build apk` or `flutter build web`.

Run commands from the repository root. After adding or changing assets, keep the asset declarations in `pubspec.yaml` in sync; use the project's asset-generation setup when updating generated asset references.

## Coding Style & Naming Conventions

Follow the standard Dart formatter and the included `flutter_lints` rules. Use two-space indentation, `UpperCamelCase` for types, `lowerCamelCase` for members, and `snake_case.dart` filenames. Prefer small, reusable widgets and keep feature-specific code within its feature directory. Use the existing routing, localization, and shared theme conventions rather than duplicating them.

## Testing Guidelines

Add tests under `test/` with descriptive `*_test.dart` filenames. Group related cases and use behavior-focused test names (as in `test/widget_test.dart`). Add or update tests when changing validators, navigation, or visible widget behavior. Run `flutter test` and `flutter analyze` before submitting changes; there is no stated coverage threshold.

## Commit & Pull Request Guidelines

Recent history uses short, imperative summaries, often lowercase (for example, `finish onboarding screen`); follow that concise style and describe one change per commit. Pull requests should explain the user-visible change, list relevant validation commands and results, and link the related issue when one exists. Include screenshots for UI changes and note any asset, localization, or platform-specific impact.
