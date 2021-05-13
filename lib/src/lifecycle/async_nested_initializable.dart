import 'async_initialize.typedef.dart';

abstract class AsyncNestedInitializable {
  Future<void> initialize({AsyncInitialize innerInitialize});
}
