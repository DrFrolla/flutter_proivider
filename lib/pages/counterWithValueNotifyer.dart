import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/counter.dart';

class ValueNotifyerPage extends StatelessWidget {
  ValueNotifyerPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    /// siccome ho solo un int che incrementa posso usare il valueNotifyer
    final counter = Provider.of<ValueNotifier<int>>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: Center(
        // Center is a layout widget. It ¯akes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),

            /// il consumer permette di creare un singolo widget che riceve i cambiamenti del
            /// listener senza che tuttio l'albero degli widget venga ribuildato
            Consumer<ValueNotifier<int>>(
              builder: (context, counter, child) => Text(
                '${counter.value}',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.value++,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
