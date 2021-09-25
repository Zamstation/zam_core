import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../domain/model.dart';
import '../object/identifiable.dart';
import '../serialize/json.dart';

@immutable
abstract class Entity<MODEL extends Model>
    with EquatableMixin
    implements Identifiable<String> {
  @override
  get stringify => true;

  const Entity();

  ///
  /// Children should implement this constructor.
  ///
  const Entity.fromJson(Json json);

  ///
  /// Children should implement this constructor.
  ///
  const Entity.fromModel(MODEL model);

  Json toJson();

  MODEL toModel();
}
