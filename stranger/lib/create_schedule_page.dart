import 'package:flutter/material.dart';

//Component Test
import './input_component/textfield_form_component.dart';
import './input_component/calendar_form_component.dart';
import './input_component/form_parent_component.dart';
import './input_component/dropdownfield_form_component.dart';
import './generic_component.dart/user_component.dart';

import './navigation_drawer.dart';

class CreateSchedulePage extends StatefulWidget {
  const CreateSchedulePage({Key? key}) : super(key: key);

  @override
  State<CreateSchedulePage> createState() => _CreateSchedulePageState();
}

class _CreateSchedulePageState extends State<CreateSchedulePage> {
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
        title: const Text("Host Schedule"),
      ),
      drawer: const NavigationDrawer(),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: const <Widget>[
            FormParent(children: [
              TextFieldForm(labelText: "From"),
              Text("To"),
              TextFieldForm(labelText: "To"),
              Text("Date"),
              CalendarForm(restorationId: 'main'),
              Text("Time Range"),
              DropdownFieldForm(),
              Text("Capacity"),
              DropdownFieldForm(),
              Text("Invites"),
              TextFieldForm(labelText: "From"),
              UserCard(),
            ]),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
