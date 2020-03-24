// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskList on _TaskList, Store {
  final _$tasksListAtom = Atom(name: '_TaskList.tasksList');

  @override
  List<Task> get tasksList {
    _$tasksListAtom.context.enforceReadPolicy(_$tasksListAtom);
    _$tasksListAtom.reportObserved();
    return super.tasksList;
  }

  @override
  set tasksList(List<Task> value) {
    _$tasksListAtom.context.conditionallyRunInAction(() {
      super.tasksList = value;
      _$tasksListAtom.reportChanged();
    }, _$tasksListAtom, name: '${_$tasksListAtom.name}_set');
  }

  final _$_TaskListActionController = ActionController(name: '_TaskList');

  @override
  void addTask(String title) {
    final _$actionInfo = _$_TaskListActionController.startAction();
    try {
      return super.addTask(title);
    } finally {
      _$_TaskListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteTask(int index) {
    final _$actionInfo = _$_TaskListActionController.startAction();
    try {
      return super.deleteTask(index);
    } finally {
      _$_TaskListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'tasksList: ${tasksList.toString()}';
    return '{$string}';
  }
}
