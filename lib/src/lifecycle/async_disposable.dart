///
/// An interface to force implement async [dispose] function.
///
/// Mostly used in services.
///
abstract class AsyncDisposable {
  Future<void> dispose();
}
