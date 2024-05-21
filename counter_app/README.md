# counter_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Testing

1. flutter build apk
2. ./gradlew app:assembleDebug -Ptarget=/Users/sselvarj/Documents/git/personal/flutter-learnings/counter_app/integration_test/appium.dart
3. Run appium ui automator tests pointing to apk-debug.apk file