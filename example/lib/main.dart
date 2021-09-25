import 'package:zam_core/zam_core.dart';

void main() {
  //
  // Cloneable
  //
  final triangle = Triangle(6, 4);
  final clonedTriangle = triangle.clone();
  assert(triangle != clonedTriangle);

  //
  // Exceptions
  //
  final emptyException = NamedException.empty();
  print(emptyException);
  // EmptyException has occured.
  // > Problem: <none>
  // > Solution: <none>

  final unnamedException = NamedException.create(
    'Provided value is -26 which is negative.',
  );
  print(unnamedException);
  // UnnamedException has occured.
  // > Problem: Provided value is -26 which is negative.
  // > Solution: <none>

  final heightException = NamedException.create(
    'Provided value is -26 which is negative.',
    solution: 'Provide a positive value.',
    name: 'Height Exception',
  );
  print(heightException);
  // Height Exception has occured.
  // > Problem: Provided value is -26 which is negative.
  // > Solution: Provide a positive value.
}

@immutable
class Triangle implements Cloneable<Triangle> {
  final double base;
  final double height;

  const Triangle(this.base, this.height);

  @override
  Triangle clone() {
    return Triangle(this.base, this.height);
  }
}

@immutable
class HeightViewModel extends ViewModel {
  final double value;

  @override
  get props => [value];

  const HeightViewModel(this.value);
}
