import 'async_initialize.dart';

abstract class AsyncNestedInitializable<OUTPUT extends Object?,
    INNER_OUTPUT extends Object?> {
  Future<OUTPUT> initialize({AsyncInitialize<INNER_OUTPUT> innerInitialize});
}
