# Zam Core Library

Core library for all the packages built by [zamstation](https://pub.dev/publishers/zamstation.com).  
  

[![Version](https://img.shields.io/pub/v/zam_core?color=%234287f5)](https://pub.dev/packages/zam_core)
[![Build](https://github.com/zamstation/zam_core/actions/workflows/build.yaml/badge.svg)](https://github.com/zamstation/zam_core/actions/workflows/build.yaml)
[![Stars](https://img.shields.io/github/stars/zamstation/zam_core.svg?style=flat&logo=github&colorB=deeppink&label=stars)](https://github.com/zamstation/zam_core/stargazers)
[![License](https://img.shields.io/github/license/zamstation/zam_core)](https://github.com/zamstation/zam_core/blob/master/LICENSE)


## What's inside the package

  * [Builder](https://pub.dev/documentation/zam_core/latest/zam_core/Builder.html)
  * [Callback](https://pub.dev/documentation/zam_core/latest/zam_core/Callback.html)
  * [Exception](https://pub.dev/documentation/zam_core/latest/zam_core/NamedException-class.html)
  * [Lifecycle](https://pub.dev/documentation/zam_core/latest/zam_core/Disposable-class.html)
  * [Object](https://pub.dev/documentation/zam_core/latest/zam_core/Identifiable-class.html)
  * [Serialize](https://pub.dev/documentation/zam_core/latest/zam_core/Serializable-class.html)
  * [ViewModel](https://pub.dev/documentation/zam_core/latest/presentation/ViewModel-class.html)

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

## Contributors
  * [Amsakanna](https://github.com/amsakanna)
