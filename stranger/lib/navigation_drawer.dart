import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const SizedBox(height: 100),
      TextButton(
        child: const Text("Public Schedules"),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacementNamed('/publicSchedules');
        },
      ),
      const SizedBox(height: 8),
      TextButton(
        child: const Text("My Schedules"),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacementNamed('/mySchedules');
        },
      ),
      const SizedBox(height: 8),
      TextButton(
          child: const Text("My Notifications"),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pushReplacementNamed('/myNotifications');
          }),
      const SizedBox(height: 8),
      TextButton(
        child: const Text("Host A Schedule"),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacementNamed('/createSchedule');
        },
      ),
      const SizedBox(height: 8),
      TextButton(
        child: const Text("Settings"),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacementNamed('/accountSettings');
        },
      ),
      const SizedBox(height: 8),
      TextButton(
        child: const Text("schedule-testing"),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushReplacementNamed('/schedule');
        },
      ),
    ]));
  }
}
