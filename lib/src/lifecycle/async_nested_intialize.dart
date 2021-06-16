import 'async_initialize.dart';

typedef AsyncNestedInitialize<OUTPUT extends Object?,
        INNER_OUTPUT extends Object?>
    = Future<OUTPUT> Function({AsyncInitialize<INNER_OUTPUT> innerInitialize});
