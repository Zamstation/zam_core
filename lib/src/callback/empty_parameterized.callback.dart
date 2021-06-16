import 'parameterized_void.callback.dart';

///
/// An empty parameterized function that can be used in
/// assigning default values for ParameterizedCallback.
///
/// ```dart
/// class MyClass {
///   final ParameterizedCallback initialize;

///   MyClass([ParameterizedCallback? initialize])
///       : initialize = initialize ?? emptyParameterizedCallback;
/// }
/// ```
///
ParameterizedVoidCallback get emptyParameterizedCallback => (input) {};
