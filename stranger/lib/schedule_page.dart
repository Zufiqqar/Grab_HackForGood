import 'package:flutter/material.dart';
import 'package:stranger/utils/material_utils.dart';

//Component Test

import 'generic_component/notification_card_component.dart';

import './navigation_drawer.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Schedule"),
      ),
      drawer: const NavigationDrawer(),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          child: Text("Main Details",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Font().medium,
                fontStyle: FontStyle.normal,
              )),
        ),
        NotificationCard(),
        NotificationCard(),
        NotificationCard(),
        NotificationCard(),
        NotificationCard(),
        NotificationCard()
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
