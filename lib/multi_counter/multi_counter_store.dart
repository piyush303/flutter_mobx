import 'package:mobx/mobx.dart';

part 'multi_counter_store.g.dart';

class SingleCounter = _SingleCounter with _$SingleCounter;

abstract class _SingleCounter with Store {
  @observable
  int value = 0;

  @action
  increment() {
    value++;
  }

  @action
  decrement() {
    value--;
  }

  @action
  reset() {
    value = 0;
  }
}

class MultiCounterStore = _MultiCounterStore with _$MultiCounterStore;

abstract class _MultiCounterStore with Store {
  @observable
  ObservableList<SingleCounter> counters = ObservableList<SingleCounter>();

  @action
  void addCounter() {
    final counter = SingleCounter();
    counters.add(counter);
  }

  @action
  void deleteCounter(index) {
    counters.removeAt(index);
  }
}