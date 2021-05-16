abstract class Activatable {
  bool get isActive;

  ///
  /// Sets [isActive] flag.
  ///
  void activate();

  ///
  /// Unsets [isActive] flag.
  ///
  void deactivate();
}
