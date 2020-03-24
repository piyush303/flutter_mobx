import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import 'package:flutter_mobx_examples/todos_basic/task_list.dart';

class TodoApp extends StatelessWidget {
  Widget buildBottomSheet(BuildContext context) {
    return AddTaskScreen();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            //isScrollControlled: true,
            builder: buildBottomSheet,
          );
        },
      ),
      body: Column(
        children: <Widget>[
          TodoListView(),
        ],
      ),
    );

}

class TodoListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TaskList>(context);
    print('TodoListView');
    print(list);
    return Observer(
      builder: (context) => Expanded(
        child: ListView.builder(
          itemBuilder: (content, index) {
            return Observer(
              builder: (context) => TaskTile(
                taskTitle: list.tasksList[index].name,
                isChecked: list.tasksList[index].isDone,
                checkBoxCallback: (checkBoxState) {
                  // taskData.updateTask(task);
                },
                longPressCallBack: () {
                  list.deleteTask(index);
                },
              ),
            );
          },
          itemCount: list.tasksList.length,
        ),
      ),
    );
  }
}

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkBoxCallback;
  final Function longPressCallBack;

  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.checkBoxCallback,
      this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
      onLongPress: longPressCallBack,
    );
  }
}

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    final list = Provider.of<TaskList>(context);

    return Container(
      child: Container(
        padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add a Task',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTask) {
                newTaskTitle = newTask;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0),
              onPressed: () {
                list.addTask(newTaskTitle);
                Navigator.pop(context);
//                print('piyuhs');
//                print(list);
              },
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
