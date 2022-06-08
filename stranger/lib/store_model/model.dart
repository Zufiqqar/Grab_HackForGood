//schedule
class Schedule {
  final String hostUID;
  final String fromLoc;
  final String toLoc;
  final String date;
  final String timeRange;
  final int capacity;
  final String notes;
  final List<String> ridersUID;

  Schedule({
    required this.hostUID,
    required this.fromLoc,
    required this.toLoc,
    required this.date,
    required this.timeRange,
    required this.capacity,
    required this.notes,
    required this.ridersUID,
  });
}

//ScheduleForm
class ScheduleForm {
  final String fromLoc;
  final String toLoc;
  final String date;
  final String timeRange;
  final String capacity;
  final String notes;
  final List<String> inviteeUID;

  ScheduleForm({
    required this.fromLoc,
    required this.toLoc,
    required this.date,
    required this.timeRange,
    required this.capacity,
    required this.notes,
    required this.inviteeUID,
  });
}

//Notification
class Notification {
  final String timestamp;
  final String color;
  final String text;
  final String scheduleUID; // leave blank if no schedule UID
  Notification(
      {required this.timestamp,
      required this.color,
      required this.text,
      required this.scheduleUID});
}

class AppState {
  final List<Schedule> publicSchedulesList;
  final List<Schedule> mySchedulesList;
  final Schedule selectedSchedule;
  final List<Notification> myNotificationsList;
  final ScheduleForm scheduleForm;

  AppState(
      {required this.publicSchedulesList,
      required this.mySchedulesList,
      required this.selectedSchedule,
      required this.myNotificationsList,
      required this.scheduleForm});

  AppState.initialState()
      : publicSchedulesList = List.unmodifiable(<Schedule>[]),
        mySchedulesList = List.unmodifiable(<Schedule>[]),
        selectedSchedule = Schedule(
            hostUID: "",
            fromLoc: "",
            toLoc: "",
            date: "",
            timeRange: "",
            capacity: 0,
            notes: "",
            ridersUID: List.unmodifiable(<String>[])),
        myNotificationsList = List.unmodifiable(<Notification>[]),
        scheduleForm = ScheduleForm(
            fromLoc: "",
            toLoc: "",
            date: "",
            timeRange: "",
            capacity: "",
            notes: "",
            inviteeUID: List.unmodifiable(<String>[]));
}
