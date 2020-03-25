import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_mobx_examples/todos/todo_list.dart';
import 'package:flutter_mobx_examples/todos/todo_widgets.dart';

import 'package:flutter_mobx_examples/todos_basic/task_list.dart';
import 'package:flutter_mobx_examples/todos_basic/todo.dart';

// Multicounter
import 'package:flutter_mobx_examples/multi_counter/multi_counter_store.dart';
import 'package:flutter_mobx_examples/multi_counter/multi_counter_widgets.dart';

// Catalog
import 'package:flutter_mobx_examples/simple_catalog/store/catalog_store.dart';
import 'package:flutter_mobx_examples/simple_catalog/catalog.dart';

// login
import 'package:flutter_mobx_examples/simple_catalog/store/login_store.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Provider<TaskList>(
//      create: (context) => TaskList(),
    return MultiProvider(
      providers: [
        Provider<TodoList>(create: (_) => TodoList()),
        Provider<TaskList>(create: (_) => TaskList()),
        Provider<MultiCounterStore>(create: (_) => MultiCounterStore()),
        Provider<CatalogStore>(create: (_) => CatalogStore()),
        Provider<LoginStore>(create: (_) => LoginStore()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Mobx POCs"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Todo App'),
              subtitle: Text('Todo App using Mobx'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TodoExample()));
              },
            ),
            ListTile(
              title: Text('Todo Basic App'),
              subtitle: Text('Todo Basic App using Mobx'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TodoApp()));
              },
            ),
            ListTile(
              title: Text('Multi Counter Store'),
              subtitle: Text('Multi Counter Store'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MultiCounterExample()));
              },
            ),
            ListTile(
              title: Text('Simple Catalog'),
              subtitle: Text('Simple Catalog'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CatalogApp()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
