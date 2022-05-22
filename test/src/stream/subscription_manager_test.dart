import 'package:test/test.dart';
import 'package:zam_core/core.dart';

void main() {
  final subscriptionManager = SubscriptionManager();

  test('subscription manager ...', () async {
    subscriptionManager.add(Stream.value(2).listen(print));
    expect(subscriptionManager.length, 1);
  });

  test('subscription manager ...', () async {
    subscriptionManager.clear();
    expect(subscriptionManager.length, 0);
  });

  tearDownAll(() => subscriptionManager.dispose());
}
