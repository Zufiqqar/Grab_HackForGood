class DBNotification {
  String? sId;
  String? userId;
  String? dateCreated;
  String? color;
  String? text;
  String? link;

  DBNotification(
      {this.sId,
      this.userId,
      this.dateCreated,
      this.color,
      this.text,
      this.link});

  DBNotification.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    userId = json['userId'];
    dateCreated = json['dateCreated'];
    color = json['color'];
    text = json['text'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['userId'] = this.userId;
    data['dateCreated'] = this.dateCreated;
    data['color'] = this.color;
    data['text'] = this.text;
    data['link'] = this.link;
    return data;
  }
}
