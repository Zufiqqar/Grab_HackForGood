import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stranger/landing_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey(debugLabel: "Main Navigator");

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  // const MyApp({Key? key}) : super(key: key);
  late AppLifecycleState _lastLifecycleState;
  Widget page = LandingPage();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    setState(() {
      _lastLifecycleState = state;
    });
    super.didChangeAppLifecycleState(state);
    print('Current state $state');
    if (state == AppLifecycleState.resumed) {
      print('App resumed');
    }
    if (state == AppLifecycleState.paused) {
      print('App exited');
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    print("InitState");
  }

  @override
  void dispose() {
    print('dispose');
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }


  // final routes = <String, WidgetBuilder>{
  //   LoginScreen.tag: (context) => LoginScreen()
  // };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        // statusBarColor: ColorPrimary
      ),
    );
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: Theme.of(context)
              .appBarTheme
              .copyWith(systemOverlayStyle: SystemUiOverlayStyle.dark)),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      home: page,
      // routes: routes,
    );
  }
}