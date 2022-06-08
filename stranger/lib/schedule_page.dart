import 'package:flutter/material.dart';
import 'package:stranger/utils/material_utils.dart';
import 'package:dotted_border/dotted_border.dart';

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
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 250, 157),
              border: Border.all(
                color: Color.fromARGB(255, 250, 250, 157),
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(15),
          child: Text("Main Details",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Font().medium,
                fontStyle: FontStyle.normal,
              )),
        ),
        Container(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("From :",
                    style: TextStyle(
                      fontSize: Font().small,
                      fontStyle: FontStyle.normal,
                    )),
                Text("Boon Lay Street 1999 Ave",
                    style: TextStyle(
                      fontSize: Font().small,
                      fontStyle: FontStyle.normal,
                    )),
              ]),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("To :",
                    style: TextStyle(
                      fontSize: Font().small,
                      fontStyle: FontStyle.normal,
                    )),
                Text("Pasir Ris",
                    style: TextStyle(
                      fontSize: Font().small,
                      fontStyle: FontStyle.normal,
                    )),
              ]),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Time :",
                    style: TextStyle(
                      fontSize: Font().small,
                      fontStyle: FontStyle.normal,
                    )),
                Text("13:00",
                    style: TextStyle(
                      fontSize: Font().small,
                      fontStyle: FontStyle.normal,
                    )),
              ]),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Date :",
                    style: TextStyle(
                      fontSize: Font().small,
                      fontStyle: FontStyle.normal,
                    )),
                Text("02/06/2022",
                    style: TextStyle(
                      fontSize: Font().small,
                      fontStyle: FontStyle.normal,
                    )),
              ]),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Capacity :",
                    style: TextStyle(
                      fontSize: Font().small,
                      fontStyle: FontStyle.normal,
                    )),
                Text("5",
                    style: TextStyle(
                      fontSize: Font().small,
                      fontStyle: FontStyle.normal,
                    )),
              ]),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("Estimated Price :",
                    style: TextStyle(
                      fontSize: Font().small,
                      fontStyle: FontStyle.normal,
                    )),
                Text("10 SGD",
                    style: TextStyle(
                      fontSize: Font().small,
                      fontStyle: FontStyle.normal,
                    )),
              ]),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 250, 157),
              border: Border.all(
                color: Color.fromARGB(255, 250, 250, 157),
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(20),
          child: Text("Other notes",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Font().medium,
                fontStyle: FontStyle.normal,
              )),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Container(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: DottedBorder(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 100,
              child: Text("Have 3 heavy luggages",
                  style: TextStyle(
                    fontSize: Font().small,
                    fontStyle: FontStyle.normal,
                  )),
            ),
            borderType: BorderType.RRect,
            dashPattern: [3, 3, 3, 3, 3, 3],
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 250, 157),
              border: Border.all(
                color: Color.fromARGB(255, 250, 250, 157),
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(20),
          child: Text("Schedule Riders",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Font().medium,
                fontStyle: FontStyle.normal,
              )),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text("Schedule Host",
              style: TextStyle(
                fontSize: Font().h4point5,
                fontStyle: FontStyle.normal,
              )),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Container(
          decoration: BoxDecoration(
              color: Colors.purple[200],
              border: Border.all(
                color: Colors.purple,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20), // Image border
              child: SizedBox.fromSize(
                size: Size.fromRadius(50), // Image radius
                child: Image.asset('image/zhongxina.jpg', fit: BoxFit.cover),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Text("Zhong Xina",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Font().medium,
                  fontStyle: FontStyle.normal,
                )),
            Text("Chinese, Male, 39",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: Font().small,
                  fontStyle: FontStyle.normal,
                )),
            Padding(padding: EdgeInsets.symmetric(vertical: 15)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Email",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Font().small,
                    fontStyle: FontStyle.normal,
                  )),
              Text("zhongxina@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Font().small,
                    fontStyle: FontStyle.normal,
                  )),
            ]),
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Phone Number",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Font().small,
                    fontStyle: FontStyle.normal,
                  )),
              Text("9999 9999",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Font().small,
                    fontStyle: FontStyle.normal,
                  )),
            ]),
          ]),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text("Schedule Riders",
              style: TextStyle(
                fontSize: Font().h4point5,
                fontStyle: FontStyle.normal,
              )),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Container(
          decoration: BoxDecoration(
              color: Colors.purple[300],
              border: Border.all(
                color: Colors.purple,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30), // Image radius
                  child: Image.asset('image/zhongxina.jpg', fit: BoxFit.cover),
                ),
              ),
              Text("Zul",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Font().h4point5,
                    fontStyle: FontStyle.normal,
                  )),
              Text("Chinese, 25, Male",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Font().h4point5,
                    fontStyle: FontStyle.normal,
                  )),
            ]),
          ]),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Container(
          decoration: BoxDecoration(
              color: Colors.purple[400],
              border: Border.all(
                color: Colors.purple,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30), // Image radius
                  child: Image.asset('image/zhongxina.jpg', fit: BoxFit.cover),
                ),
              ),
              Text("Ben",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Font().h4point5,
                    fontStyle: FontStyle.normal,
                  )),
              Text("Chinese, 25, Male",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Font().h4point5,
                    fontStyle: FontStyle.normal,
                  )),
            ]),
          ]),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Container(
          decoration: BoxDecoration(
              color: Colors.purple[600],
              border: Border.all(
                color: Colors.purple,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30), // Image radius
                  child: Image.asset('image/zhongxina.jpg', fit: BoxFit.cover),
                ),
              ),
              Text("Master Wong",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Font().h4point5,
                    fontStyle: FontStyle.normal,
                  )),
              Text("Chinese, 26, Male",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Font().h4point5,
                    fontStyle: FontStyle.normal,
                  )),
            ]),
          ]),
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Container(
          decoration: BoxDecoration(
              color: Colors.purple[700],
              border: Border.all(
                color: Colors.purple,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          padding: const EdgeInsets.all(15),
          child: Column(children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30), // Image radius
                  child: Image.asset('image/zhongxina.jpg', fit: BoxFit.cover),
                ),
              ),
              Text("Sky",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Font().h4point5,
                    fontStyle: FontStyle.normal,
                  )),
              Text("Chinese, 25, Male",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: Font().h4point5,
                    fontStyle: FontStyle.normal,
                  )),
            ]),
          ]),
        ),
        NotificationCard(),
      ])),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
