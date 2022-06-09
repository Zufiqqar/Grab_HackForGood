import 'package:http/http.dart';
import 'dart:convert';
//import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'database_obj_notification.dart';
import 'database_obj_schedule.dart';

class HttpService {
  final String postsURL = "https://grab-hacker-earth.herokuapp.com";

  //get All Schedules
  Future<List<DBSchedule>> getSchedules() async {
    Response res = await get(Uri.parse(postsURL + "/schedule/get_all_users/"));

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<DBSchedule> schedules = body
          .map(
            (dynamic item) => DBSchedule.fromJson(item),
          )
          .toList();

      return schedules;
    } else {
      throw "Unable to retrieve schedule.";
    }
  }

  //get All Schedules by UID
  Future<List<DBSchedule>> getSchedulesByUID(String userId) async {
    Response res = await get(Uri.parse(postsURL + "/schedule/get_all_users/"),
        headers: {"notificationId": userId});

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<DBSchedule> schedules = body
          .map(
            (dynamic item) => DBSchedule.fromJson(item),
          )
          .toList();

      return schedules;
    } else {
      throw "Unable to retrieve schedule.";
    }
  }

  //get Notification by UID
  Future<List<DBNotification>> getNotificationsByUID(String userId) async {
    Response res = await get(Uri.parse(postsURL + "/schedule/get_all_users/"),
        headers: {"notificationId": userId});

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<DBNotification> notifications = body
          .map(
            (dynamic item) => DBNotification.fromJson(item),
          )
          .toList();

      return notifications;
    } else {
      throw "Unable to retrieve user notification.";
    }
  }
}
