import 'package:mobx/mobx.dart';
import 'package:flutter_mobx_examples/todos_basic/task.dart';

// Include generated file
part 'task_list.g.dart';

// This is the class used by rest of your codebase
class TaskList = _TaskList with _$TaskList;

// The store-class
abstract class _TaskList with Store {
  @observable
  List<Task> tasksList = [
    Task(name: 'buy milk'),
    Task(name: 'buy sugar'),
    Task(name: 'buy bread'),
  ];

//  @observable
//  ObservableList<Task> tasksList = ObservableList<Task>();


  @action
  void addTask(String title) {
    final task = Task(name: title);
    tasksList.add(task);
    // print(tasksList);
  }
  
  @action
  void deleteTask(int index) {
    tasksList.removeAt(index);
    // print(tasksList);
  }
}

