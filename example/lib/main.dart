import 'package:zam_core/zam_core.dart';

void main() {
  final car = Car(4, 4);
  final clonedCar = car.clone();
  print(car == clonedCar); // false
}

class Car implements Cloneable<Car> {
  final doorCount;
  final wheelCount;

  const Car(this.doorCount, this.wheelCount);

  @override
  Car clone() {
    return Car(
      this.doorCount,
      this.wheelCount,
    );
  }
}
