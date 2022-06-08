//schedule
class Schedule {
  final String hostUID;
  final String fromLoc;
  final String toLoc;
  final String date;
  final String timeRange;
  final int capacity;
  final String notes;
  final List<String> inviteeUID;

  Schedule({
    required this.hostUID,
    required this.fromLoc,
    required this.toLoc,
    required this.date,
    required this.timeRange,
    required this.capacity,
    required this.notes,
    required this.inviteeUID,
  });
}

//ScheduleForm
class ScheduleForm {
  final String to
}

//Notification
class Notification {}

class Item {
  final int id;
  final String body;

  Item({required this.id, required this.body});
}

class AppState {
  final List<Item> items;
  final int count;

  AppState({
    required this.items,
    required this.count,
  });

  AppState.initialState()
      : items = List.unmodifiable(<Item>[]),
        count = 0;
}
