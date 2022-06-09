// import 'package:stranger/my_notifications_page.dart';

import 'model.dart';
import 'actions.dart';
import 'package:redux/redux.dart';

//publicSchedulesList
final publicSchedulesListReducer = combineReducers<List<Schedule>>([
  TypedReducer<List<Schedule>, AddPublicSchedule>(
      _addPublicSchedulesListReducer),
  TypedReducer<List<Schedule>, RemovePublicSchedule>(
      _removePublicSchedulesListReducer),
  TypedReducer<List<Schedule>, ClearAllPublicSchedule>(
      _clearPublicSchedulesListReducer),
  TypedReducer<List<Schedule>, LoadPublicScheduleSucceed>(
      _loadPublicSchedulesListReducer),
]);
// List<Schedule> publicSchedulesListReducer(List<Schedule> state, action) {
//   return state;
// }

List<Schedule> _addPublicSchedulesListReducer(
    List<Schedule> state, AddPublicSchedule action) {
  return state;
}

List<Schedule> _removePublicSchedulesListReducer(
    List<Schedule> state, RemovePublicSchedule action) {
  return state;
}

List<Schedule> _clearPublicSchedulesListReducer(
    List<Schedule> state, ClearAllPublicSchedule action) {
  return state;
}

List<Schedule> _loadPublicSchedulesListReducer(
    List<Schedule> state, LoadPublicScheduleSucceed action) {
  return state;
}

//mySchedulesList

final mySchedulesListReducer = combineReducers<List<Schedule>>([
  TypedReducer<List<Schedule>, AddMySchedule>(_addMySchedulesListReducer),
  TypedReducer<List<Schedule>, RemoveMySchedule>(_removeMySchedulesListReducer),
  TypedReducer<List<Schedule>, ClearAllMySchedule>(
      _clearMySchedulesListReducer),
]);
// List<Schedule> mySchedulesListReducer(List<Schedule> state, action) {
//   return state;
// }

List<Schedule> _addMySchedulesListReducer(
    List<Schedule> state, AddMySchedule action) {
  return state;
}

List<Schedule> _removeMySchedulesListReducer(
    List<Schedule> state, RemoveMySchedule action) {
  return state;
}

List<Schedule> _clearMySchedulesListReducer(
    List<Schedule> state, ClearAllMySchedule action) {
  return state;
}

//selectedSchedule

final selectedScheduleReducer = combineReducers<Schedule>([
  TypedReducer<Schedule, PickSelectedSchedule>(_pickSelectedScheduleReducer),
  TypedReducer<Schedule, ResetSelectedSchedule>(_resetSelectedScheduleReducer),
]);
// Schedule selectedScheduleReducer(Schedule state, action) {
//   return state;
// }

Schedule _pickSelectedScheduleReducer(
    Schedule state, PickSelectedSchedule action) {
  return state;
}

Schedule _resetSelectedScheduleReducer(
    Schedule state, ResetSelectedSchedule action) {
  return state;
}

//myNotificationsList
final myNotificationsListReducer = combineReducers<List<Notification>>([
  TypedReducer<List<Notification>, AddMyNotification>(
      _addMyNotificationsListReducer),
  TypedReducer<List<Notification>, RemoveMyNotification>(
      _removeMyNotificationsListReducer),
  TypedReducer<List<Notification>, ClearAllMyNotification>(
      _clearMyNotificationsListReducer),
]);

// List<Notification> myNotificationsListReducer(
//     List<Notification> state, action) {
//   return state;
// }

List<Notification> _addMyNotificationsListReducer(
    List<Notification> state, AddMyNotification action) {
  return state;
}

List<Notification> _removeMyNotificationsListReducer(
    List<Notification> state, RemoveMyNotification action) {
  return state;
}

List<Notification> _clearMyNotificationsListReducer(
    List<Notification> state, ClearAllMyNotification action) {
  return state;
}

//scheduleForm
ScheduleForm scheduleFormReducer(ScheduleForm state, action) {
  return state;
}

AppState appStateReducer(AppState state, action) {
  return AppState(
    publicSchedulesList:
        publicSchedulesListReducer(state.publicSchedulesList, action),
    mySchedulesList: mySchedulesListReducer(state.mySchedulesList, action),
    selectedSchedule: selectedScheduleReducer(state.selectedSchedule, action),
    myNotificationsList:
        myNotificationsListReducer(state.myNotificationsList, action),
    scheduleForm: scheduleFormReducer(state.scheduleForm, action),
  );
}
