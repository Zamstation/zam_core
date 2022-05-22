import 'package:test/test.dart';
import 'package:zam_core/zam_core.dart' show ViewModel;

void main() {
  group('ViewModel: ', () {
    late final viewModel = MyViewModel(10, 'litres');
    test('Stringify is set to true', () async {
      expect(viewModel.toString(), 'MyViewModel(10, litres)');
    });
  });
}

class MyViewModel extends ViewModel {
  final int quantity;
  final String unit;
  final String container;

  const MyViewModel(this.quantity, this.unit, [this.container = 'can']);

  @override
  get props => [quantity, unit];
}
