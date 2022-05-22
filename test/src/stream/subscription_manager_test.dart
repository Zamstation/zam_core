import 'package:test/test.dart';
import 'package:zam_core/core.dart' show SubscriptionManager;

void main() {
  group('SubscriptionManager:', () {
    final subscriptionManager = SubscriptionManager();
    test('Adds a subscription', () async {
      subscriptionManager.add(Stream.value(2).listen(print));
      expect(subscriptionManager.length, 1);
    });

    test('Clears all subscriptions', () async {
      subscriptionManager.clear();
      expect(subscriptionManager.length, 0);
    });

    tearDownAll(() => subscriptionManager.dispose());
  });
}
