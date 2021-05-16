import 'package:zam_core/zam_core.dart';

void main() {
  final triangle = Triangle(6, 4);
  final clonedTriangle = triangle.clone();
  print(triangle == clonedTriangle); // false
}

class Triangle implements Cloneable<Triangle> {
  final double base;
  final double height;

  const Triangle(this.base, this.height);

  @override
  Triangle clone() {
    return Triangle(this.base, this.height);
  }
}
