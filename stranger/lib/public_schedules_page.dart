import 'package:flutter/material.dart';

//Component Test
import 'generic_component.dart/schedule_card_component.dart';

import './navigation_drawer.dart';

class PublicSchedulesPage extends StatefulWidget {
  const PublicSchedulesPage({Key? key}) : super(key: key);

  @override
  State<PublicSchedulesPage> createState() => _PublicSchedulesPageState();
}

class _PublicSchedulesPageState extends State<PublicSchedulesPage> {
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
        title: const Text("Public Schedules"),
      ),
      drawer: const NavigationDrawer(),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: const <Widget>[
            ScheduleCard(),
            ScheduleCard(),
            ScheduleCard(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
