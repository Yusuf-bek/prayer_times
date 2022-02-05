class ModelApi {
  int? month;
  int? day;
  Times? times;
  String? region;
  String? date;
  String? weekday;

  ModelApi(
      {this.month, this.day, this.times, this.region, this.date, this.weekday});

  ModelApi.fromJson(Map<String, dynamic> json) {
    month = json['month'];
    day = json['day'];
    times = Times.fromJson(json['times']);
    region = json['region'];
    date = json['date'];
    weekday = json['weekday'];
  }
}

class Times {
  String? tongSaharlik;
  String? quyosh;
  String? peshin;
  String? asr;
  String? shomIftor;
  String? hufton;

  Times(
      {this.tongSaharlik,
      this.quyosh,
      this.peshin,
      this.asr,
      this.shomIftor,
      this.hufton});

  Times.fromJson(Map<String, dynamic> json) {
    tongSaharlik = json['tong_saharlik'];
    quyosh = json['quyosh'];
    peshin = json['peshin'];
    asr = json['asr'];
    shomIftor = json['shom_iftor'];
    hufton = json['hufton'];
  }
}
