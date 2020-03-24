import 'package:mobx/mobx.dart';

part 'task.g.dart';

class Task = _Task with _$Task;

abstract class _Task with Store{
  _Task({ this.name, this.isDone = false });

  @observable
  String name;

  @observable
  bool isDone;

  @action
  void toggleDone() {
    isDone = !isDone;
  }
}