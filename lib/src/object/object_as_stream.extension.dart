extension ObjectAsStreamExtension<T extends Object> on T {
  Stream<T> asStream() {
    return Stream.value(this);
  }
}
