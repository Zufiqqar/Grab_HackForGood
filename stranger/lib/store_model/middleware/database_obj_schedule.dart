class DBSchedule {
  String? sId;
  String? userId;
  String? startAddress;
  StartLoc? startLoc;
  String? endAddress;
  StartLoc? endLoc;
  String? dateCreated;
  String? timeRange;
  int? capacity;
  String? notes;
  List<String>? participants;

  DBSchedule(
      {this.sId,
      this.userId,
      this.startAddress,
      this.startLoc,
      this.endAddress,
      this.endLoc,
      this.dateCreated,
      this.timeRange,
      this.capacity,
      this.notes,
      this.participants});

  DBSchedule.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    userId = json['userId'];
    startAddress = json['startAddress'];
    startLoc = json['startLoc'] != null
        ? new StartLoc.fromJson(json['startLoc'])
        : null;
    endAddress = json['endAddress'];
    endLoc =
        json['endLoc'] != null ? new StartLoc.fromJson(json['endLoc']) : null;
    dateCreated = json['dateCreated'];
    timeRange = json['timeRange'];
    capacity = json['capacity'];
    notes = json['notes'];
    participants = json['participants'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['userId'] = this.userId;
    data['startAddress'] = this.startAddress;
    if (this.startLoc != null) {
      data['startLoc'] = this.startLoc!.toJson();
    }
    data['endAddress'] = this.endAddress;
    if (this.endLoc != null) {
      data['endLoc'] = this.endLoc!.toJson();
    }
    data['dateCreated'] = this.dateCreated;
    data['timeRange'] = this.timeRange;
    data['capacity'] = this.capacity;
    data['notes'] = this.notes;
    data['participants'] = this.participants;
    return data;
  }
}

class StartLoc {
  String? type;
  List<int>? coordinates;

  StartLoc({this.type, this.coordinates});

  StartLoc.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['coordinates'] = this.coordinates;
    return data;
  }
}
