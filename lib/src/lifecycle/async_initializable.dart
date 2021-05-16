///
/// An interface to force implement async [initialize] function.
///
/// Mostly used in services.
///
abstract class AsyncInitializable {
  Future<void> initialize();
}
