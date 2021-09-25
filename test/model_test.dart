import 'package:test/test.dart';
import 'package:zam_core/zam_core.dart';

void main() {
  modelTest();
}

void modelTest() {
  group('Model:', () {
    final bmi = BmiModel(81.0, 1.8);

    test('toString should output value from EquatableMixin', () {
      expect(bmi.toString(), 'BmiModel(81.0, 1.8, 25.0)');
    });
  });
}

@immutable
class BmiModel extends Model {
  final double weight;
  final double height;
  final double value;

  @override
  get props => [weight, height, value];

  const BmiModel(this.weight, this.height) : value = weight / (height * height);
}
