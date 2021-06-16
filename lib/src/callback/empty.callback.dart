import 'void.callback.dart';

///
/// An empty function that can be used in assigning
/// default values for Callback.
///
/// ```dart
/// class MyClass {
///   final Callback initialize;

///   MyClass([Callback? initialize])
///       : initialize = initialize ?? emptyCallback;
/// }
/// ```
///
VoidCallback get emptyCallback => () {};
