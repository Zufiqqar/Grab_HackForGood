/*Actions*/

// import 'package:reduxexample/model.dart';

// class AddItemAction {
//   static int _id = 0;
//   final String item;

//   AddItemAction(this.item) {
//     _id++;
//   }

//   int get id => _id;
// }

// class RemoveItemAction {
//   final Item item;
//   RemoveItemAction(this.item);
// }

// class RemoveItemsAction {
// }

import 'model.dart';

//PublicScheduleActions
class AddPublicSchedule {
  AddPublicSchedule();
}

class RemovePublicSchedule {
  RemovePublicSchedule();
}

class ClearAllPublicSchedule {
  ClearAllPublicSchedule();
}

class LoadPublicSchedule {
  LoadPublicSchedule();
}

class LoadPublicScheduleSucceed {
  final dynamic fetchdata;
  LoadPublicScheduleSucceed(this.fetchdata);
}

class LoadPublicScheduleFailed {
  LoadPublicScheduleFailed();
}

//mySchedulesListActions
class AddMySchedule {
  AddMySchedule();
}

class RemoveMySchedule {
  RemoveMySchedule();
}

class ClearAllMySchedule {
  ClearAllMySchedule();
}

//selectedSchedule
class PickSelectedSchedule {
  PickSelectedSchedule();
}

class ResetSelectedSchedule {
  ResetSelectedSchedule();
}

//myNotificationsListActions
class AddMyNotification {
  AddMyNotification();
}

class RemoveMyNotification {
  RemoveMyNotification();
}

class ClearAllMyNotification {
  ClearAllMyNotification();
}
