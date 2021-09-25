import 'package:equatable/equatable.dart';

///
/// Contains domain data.
///
abstract class Model with EquatableMixin {
  @override
  get stringify => true;

  const Model();
}
