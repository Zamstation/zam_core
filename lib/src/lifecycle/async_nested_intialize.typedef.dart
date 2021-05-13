import 'async_initialize.typedef.dart';

typedef AsyncNestedInitialize = Future<bool> Function(
    {AsyncInitialize innerInitialize});
