set -e # abort deployment if an error happens
flutter packages get
flutter format --set-exit-if-changed lib test
flutter analyze --no-current-package lib test/
flutter test --no-pub --coverage
