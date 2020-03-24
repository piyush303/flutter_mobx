// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Task on _Task, Store {
  final _$nameAtom = Atom(name: '_Task.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$isDoneAtom = Atom(name: '_Task.isDone');

  @override
  bool get isDone {
    _$isDoneAtom.context.enforceReadPolicy(_$isDoneAtom);
    _$isDoneAtom.reportObserved();
    return super.isDone;
  }

  @override
  set isDone(bool value) {
    _$isDoneAtom.context.conditionallyRunInAction(() {
      super.isDone = value;
      _$isDoneAtom.reportChanged();
    }, _$isDoneAtom, name: '${_$isDoneAtom.name}_set');
  }

  final _$_TaskActionController = ActionController(name: '_Task');

  @override
  void toggleDone() {
    final _$actionInfo = _$_TaskActionController.startAction();
    try {
      return super.toggleDone();
    } finally {
      _$_TaskActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'name: ${name.toString()},isDone: ${isDone.toString()}';
    return '{$string}';
  }
}
