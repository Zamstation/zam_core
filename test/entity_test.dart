import 'package:test/test.dart';
import 'package:zam_core/zam_core.dart';

import 'model_test.dart' show BmiModel;

void main() {
  entityTest();
}

void entityTest() {
  group('Entity:', () {
    final person = BmiEntity(weight: 81.0, height: 1.8);

    test('toString should output value from EquatableMixin', () {
      expect(person.toString(), 'BmiEntity(81.0, 1.8)');
    });
  });
}

@immutable
class BmiEntity extends Entity<BmiModel> {
  final String key = '';
  final double weight;
  final double height;

  @override
  get props => [weight, height];

  const BmiEntity({
    required this.weight,
    required this.height,
  });

  BmiEntity.fromJson(Json json)
      : this(
          weight: json['weight'] as double,
          height: json['height'] as double,
        );

  BmiEntity.fromModel(BmiModel model)
      : this(
          weight: model.weight,
          height: model.height,
        );

  @override
  Json toJson() {
    return {
      'key': this.key,
      'weight': this.weight,
      'height': this.height,
    };
  }

  @override
  BmiModel toModel() {
    return BmiModel(this.weight, this.height);
  }
}
