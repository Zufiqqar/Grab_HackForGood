import 'package:flutter/material.dart';
// import 'package:redux/redux.dart';
// import './model/cosnt.dart';

import 'public_schedules_page.dart';
import 'test_page.dart';
import 'my_notifications_page.dart';
import 'create_schedule_page.dart';
import 'account_settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: "My Flutter App"),
      initialRoute: '/publicSchedules',
      routes: <String, WidgetBuilder>{
        '/publicSchedules': (BuildContext context) =>
            const PublicSchedulesPage(),
        '/mySchedules': (BuildContext context) => const MyTestPage(),
        '/myNotifications': (BuildContext context) =>
            const MyNotificationsPage(),
        '/createSchedule': (BuildContext context) => const CreateSchedulePage(),
        '/accountSettings': (BuildContext context) =>
            const AccountSettingsPage()
      },
    );
  }
}
