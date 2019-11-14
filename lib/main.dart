import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/pages/counterWithClassProvider.dart';
import 'package:provider_example/pages/counterWithValueNotifyer.dart';
import 'package:provider_example/pages/home.dart';

import 'counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ChangeNotifierProvider<Counter>(
      //   builder: (context) => Counter(),
      //   child: ProviderPage(title: 'Flutter Demo Home Page'),
      // ),
      routes: {
        '/': (context) => Home(),
        '/usingProvider': (context) => ChangeNotifierProvider<Counter>(
              builder: (context) => Counter(),
              child: ProviderPage(title: 'Flutter Demo Home Page'),
            ),
        '/usingValueNotifyer': (context) =>
            ChangeNotifierProvider<ValueNotifier<int>>(
              builder: (context) => ValueNotifier<int>(0),
              child: ValueNotifyerPage(title: 'Flutter Demo Home Page'),
            ),
      },
    );
  }
}
