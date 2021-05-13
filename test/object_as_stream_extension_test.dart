import 'package:test/test.dart';
import 'package:zam_core/zam_core.dart';

void main() {
  testObjectAsStreamExtension();
}

void testObjectAsStreamExtension() {
  group('Object As Stream Extension Test:', () {
    final input = 86;
    final output = input.asStream();

    test('Value 86 is converted to a stream.', () {
      expect(output, emits(86));
    });
  });
}
