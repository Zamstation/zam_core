import 'dart:async' show StreamSubscription;

import 'package:rxdart/rxdart.dart' show CompositeSubscription;

class SubscriptionManager extends CompositeSubscription {
  final _subscriptionMap = <String, StreamSubscription>{};

  SubscriptionManager();

  ///
  /// Adds a subscription by id.
  ///
  StreamSubscription<T> addById<T extends Object>(
      StreamSubscription<T> subscription, String id) {
    _subscriptionMap.addEntries([MapEntry(id, subscription)]);
    return add(subscription);
  }

  void removeById(String id) {
    if (!_subscriptionMap.containsKey(id)) return;

    final subscription = _subscriptionMap[id]!;
    remove(subscription);
  }

  ///
  /// Replaces an existing subscription by id.
  ///
  StreamSubscription<T> replaceById<T extends Object>(
      StreamSubscription<T> subscription, String id) {
    removeById(id);
    return addById(subscription, id);
  }

  @override
  remove(
    StreamSubscription<dynamic> subscription, {
    bool shouldCancel = true,
  }) async {
    await super.remove(subscription, shouldCancel: shouldCancel);
    _subscriptionMap.removeWhere((id, item) => item == subscription);
  }

  @override
  clear() async {
    await super.clear();
    _subscriptionMap.clear();
  }
}
