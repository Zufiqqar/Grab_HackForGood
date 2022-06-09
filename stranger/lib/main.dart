import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_saga/redux_saga.dart';
import 'package:stranger/store_model/model.dart';

// import './model/cosnt.dart';

import 'store_model/reducers.dart';
import 'store_model/middleware/sagas.dart';

import 'public_schedules_page.dart';
import 'test_page.dart';
import 'my_notifications_page.dart';
import 'create_schedule_page.dart';
import 'account_settings_page.dart';
import 'landing_page.dart';
import 'schedule_page.dart';

void main() {
  var sagaMiddleware = createSagaMiddleware();
  final store = Store<AppState>(appStateReducer,
      initialState: AppState.initialState(),
      middleware: [applyMiddleware(sagaMiddleware)]);

  sagaMiddleware.setStore(store);
  sagaMiddleware.run(rootSaga);

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  const MyApp({Key? key, required this.store}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
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
            primarySwatch: Colors.purple,
          ),
          //home: const MyHomePage(title: "My Flutter App"),
          initialRoute: '/publicSchedules',
          routes: <String, WidgetBuilder>{
            //  '/': (BuildContext context) => const LandingPage(),
            '/publicSchedules': (BuildContext context) =>
                const PublicSchedulesPage(),
            '/mySchedules': (BuildContext context) => const MyTestPage(),
            '/myNotifications': (BuildContext context) =>
                const MyNotificationsPage(),
            '/createSchedule': (BuildContext context) =>
                const CreateSchedulePage(),
            '/accountSettings': (BuildContext context) =>
                const AccountSettingsPage(),
            '/schedule': (BuildContext context) => const SchedulePage(),
          },
        ));
  }
}
