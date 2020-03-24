import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'package:flutter_mobx_examples/multi_counter/multi_counter_store.dart';

class MultiCounterExample extends StatefulWidget {
  const MultiCounterExample();

  @override
  _MultiCounterExampleState createState() => _MultiCounterExampleState();
}

class _MultiCounterExampleState extends State<MultiCounterExample> {
  final MultiCounterStore store = MultiCounterStore();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Multi Counter'),
        ),
        body: CounterListPage(),
      );
}

class CounterListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<MultiCounterStore>(context);

    return Container(
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Add Counter'),
            onPressed: () {
              store.addCounter();
            },
          ),
          Observer(
            builder: (context) => ListView.builder(
              shrinkWrap: true,
              itemCount: store.counters.length,
              itemBuilder: (context, index) => ListTile(
                trailing: Icon(Icons.navigate_next),
                title: Text('Counter $index'),
                leading: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    store.deleteCounter(index);
                  },
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CounterViewPage(index: index),),);
                },
              ),
            ),
          )

        ],
      ),
    );
  }
}


class CounterViewPage extends StatelessWidget {
  CounterViewPage({ @required this.index });

  final int index;

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<MultiCounterStore>(context).counters[index];

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter View'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RaisedButton(
              child: Icon(Icons.remove),
              onPressed: (){
                counter.decrement();
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Observer(
                  builder: (_) => Text(counter.value.toString()),
                ),
                RaisedButton(
                  child: Text('reset'),
                  onPressed: () {
                    counter.reset();
                  },
                )
              ],
            ),
            RaisedButton(
              child: Icon(Icons.add),
              onPressed: (){
                counter.increment();
              },
            )
          ],
        ),
      ),
    );
  }
}
