# Zam Core Library

Core library for all the packages built by [zamstation](https://pub.dev/publishers/zamstation.com).

## What's inside the package

- [Builder](https://pub.dev/documentation/zam_core/latest/builder/Builder.html)
- [Callback](https://pub.dev/documentation/zam_core/latest/callback/Callback.html)
- [Exception](https://pub.dev/documentation/zam_core/latest/exception/NamedException-class.html)
- [Lifecycle](https://pub.dev/documentation/zam_core/latest/lifecycle/Disposable-class.html)
- [Identifiable](https://pub.dev/documentation/zam_core/latest/object/Identifiable-class.html)
- [Serialize](https://pub.dev/documentation/zam_core/latest/serialize/Serializable-class.html)
- [Model](https://pub.dev/documentation/zam_core/latest/domain/Model-class.html)
- [ViewModel](https://pub.dev/documentation/zam_core/latest/presentation/ViewModel-class.html)
- [Entity](https://pub.dev/documentation/zam_core/latest/repository/Entity-class.html)

Check out all the components in detail [here](https://pub.dev/documentation/zam_core/latest/zam_core/zam_core-library.html)

## How to use

### ParameterizedBuilder

```dart
final ParameterizedBuilder<Type, Car> carBuilder;
// ...
final car = carBuilder(HondaCivic);
```

### ParameterizedCallback

```dart
final ParameterizedCallback<double, int> roundOffStrategy;
// ...
final price = roundOffStrategy(8.458);
```

### NamedException

Wrapper around the built-in `Exception` class.

Provides more classified details of the exception like `severity` and `solution`.

Construct it with a simple problem statement.

```dart
final exception = NamedException.create('Provided value is -26 which is negative.');
```
or build it with more details.

```dart
final exception = NamedException.create(
  'Provided value is -26 which is negative.'
  solution: 'Please provide a positive value.'
  severity: ExceptionSeverity.critical,
);
```

### Cloneable

```dart
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
```

### Model
```dart
@immutable
class BmiModel extends Model {
  final double weight;
  final double height;
  final double value;

  @override
  get props => [weight, height];

  const BmiModel(this.weight, this.height) : value = weight / (height * height);
}
```

### ViewModel
```dart
@immutable
class HeightViewModel extends ViewModel {
  final double value;

  @override
  get props => [value];

  const HeightViewModel(this.value);
}
```

### Entity
```dart
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
```

To learn more, move on to the [example section](https://pub.dev/packages/zam_core/example) or check out these dedicated [examples in github](https://github.com/zamstation/zam_core/blob/main/example/lib).

## Status
[![Build](https://github.com/zamstation/zam_core/actions/workflows/deploy_workflow.yaml/badge.svg)](https://github.com/zamstation/zam_core/actions/workflows/deploy_workflow.yaml)

## Contributors
- [Amsakanna](https://github.com/amsakanna)

## License
[BSD 3-Clause License](https://github.com/zamstation/zam_core/blob/main/LICENSE)
