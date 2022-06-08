import 'package:flutter/material.dart';
import 'utils/material_utils.dart';
//Component Test
import './input_component/textfield_form_component.dart';
import './input_component/calendar_form_component.dart';
import './input_component/form_parent_component.dart';
import './input_component/dropdownfield_form_component.dart';
import './generic_component/user_component.dart';
import 'store_model/model.dart';
import 'package:intl/intl.dart';
import './navigation_drawer.dart';

class CreateSchedulePage extends StatefulWidget {
  const CreateSchedulePage({Key? key}) : super(key: key);

  @override
  State<CreateSchedulePage> createState() => _CreateSchedulePageState();
}

class _CreateSchedulePageState extends State<CreateSchedulePage> {
  final pickUpController = TextEditingController();
  final dropOffContoller = TextEditingController();
  final capacityContoller = TextEditingController();
  final noteController = TextEditingController();

  void CreateSchedule() {
    Schedule newSchedule = Schedule(
      hostUID: "masterwong382",
      fromLoc: pickUpController.text,
      toLoc: dropOffContoller.text,
      date: selectedDate.toString(),
      timeRange: selectedTime,
      capacity: capacityContoller.text as int,
      notes: noteController.text,
      inviteeUID: [],
    );
  }

  DateTime selectedDate = DateTime.now();
  TimeOfDay timeNow = TimeOfDay.now();
  String selectedTime = DateFormat().add_jm().format(DateTime.parse(
      DateTime.now()
          .toString()
          .substring(0, DateTime.now().toString().indexOf('.'))));

  void _addNewSchedule() {
    final pickUp = pickUpController.text;
    final dropOff = dropOffContoller.text;
    final capacity = capacityContoller.text;
    final note = noteController.text;

    if (pickUp.isEmpty || dropOff.isEmpty || capacity.isEmpty || note.isEmpty) {
      return;
    }
    //Send
    CreateSchedule();
  }

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  _selectTime(BuildContext context) async {
    Future<TimeOfDay?> selectTime = showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 0, minute: 0),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    ).then((value) {
      if (value == null) return;
      setState(() {
        selectedTime = TimeOfDay(
          hour: value.hour,
          minute: value.minute,
        ).format(context);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Schedule"),
      ),
      drawer: const NavigationDrawer(),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Pick Up'),
                controller: pickUpController,
                // onSubmitted: (_) => _addNewSchedule(),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Destination'),
                controller: dropOffContoller,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Capacity'),
                controller: capacityContoller,
                keyboardType: TextInputType.number,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          onPressed: () => _selectDate(context), // Refer step 3
                          child: const Text(
                            'Select date',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),

                          color: Colors.greenAccent,
                        ),
                        Text(
                          DateFormat.yMMMd().format(selectedDate),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          onPressed: () => _selectTime(context), // Refer step 3
                          child: const Text(
                            'Select Time',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),

                          color: Colors.greenAccent,
                        ),
                        Text(
                          selectedTime,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Additional Notes'),
                controller: noteController,
              ),
              FlatButton(
                onPressed: () => _addNewSchedule(),
                child: Text('Add Schedule'),
                textColor: Colors.purple,
              )
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
