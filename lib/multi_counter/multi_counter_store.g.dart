// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SingleCounter on _SingleCounter, Store {
  final _$valueAtom = Atom(name: '_SingleCounter.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$_SingleCounterActionController =
      ActionController(name: '_SingleCounter');

  @override
  dynamic increment() {
    final _$actionInfo = _$_SingleCounterActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_SingleCounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic decrement() {
    final _$actionInfo = _$_SingleCounterActionController.startAction();
    try {
      return super.decrement();
    } finally {
      _$_SingleCounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic reset() {
    final _$actionInfo = _$_SingleCounterActionController.startAction();
    try {
      return super.reset();
    } finally {
      _$_SingleCounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'value: ${value.toString()}';
    return '{$string}';
  }
}

mixin _$MultiCounterStore on _MultiCounterStore, Store {
  final _$countersAtom = Atom(name: '_MultiCounterStore.counters');

  @override
  ObservableList<SingleCounter> get counters {
    _$countersAtom.context.enforceReadPolicy(_$countersAtom);
    _$countersAtom.reportObserved();
    return super.counters;
  }

  @override
  set counters(ObservableList<SingleCounter> value) {
    _$countersAtom.context.conditionallyRunInAction(() {
      super.counters = value;
      _$countersAtom.reportChanged();
    }, _$countersAtom, name: '${_$countersAtom.name}_set');
  }

  final _$_MultiCounterStoreActionController =
      ActionController(name: '_MultiCounterStore');

  @override
  void addCounter() {
    final _$actionInfo = _$_MultiCounterStoreActionController.startAction();
    try {
      return super.addCounter();
    } finally {
      _$_MultiCounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteCounter(dynamic index) {
    final _$actionInfo = _$_MultiCounterStoreActionController.startAction();
    try {
      return super.deleteCounter(index);
    } finally {
      _$_MultiCounterStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'counters: ${counters.toString()}';
    return '{$string}';
  }
}
