flutter packages get
flutter format --set-exit-if-changed lib test example
flutter analyze --no-current-package lib test example
flutter test --no-pub --coverage