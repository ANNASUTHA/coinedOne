class ResponseData {
  bool? _success;
  Data? _data;

  ResponseData({bool? success, Data? data}) {
    if (success != null) {
      _success = success;
    }
    if (data != null) {
      _data = data;
    }
  }

  bool? get success => _success;
  set success(bool? success) => _success = success;
  Data? get data => _data;
  set data(Data? data) => _data = data;

  ResponseData.fromJson(Map<String, dynamic> json) {
    _success = json['success'];
    _data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['success'] = _success;
    if (_data != null) {
      data['data'] = _data!.toJson();
    }
    return data;
  }
}

class Data {
  ScreenTime? _screenTime;
  FreeTime? _freeTime;
  List<Devices>? _devices;

  Data({ScreenTime? screenTime, FreeTime? freeTime, List<Devices>? devices}) {
    if (screenTime != null) {
      _screenTime = screenTime;
    }
    if (freeTime != null) {
      _freeTime = freeTime;
    }
    if (devices != null) {
      _devices = devices;
    }
  }

  ScreenTime? get screenTime => _screenTime;
  set screenTime(ScreenTime? screenTime) => _screenTime = screenTime;
  FreeTime? get freeTime => _freeTime;
  set freeTime(FreeTime? freeTime) => _freeTime = freeTime;
  List<Devices>? get devices => _devices;
  set devices(List<Devices>? devices) => _devices = devices;

  Data.fromJson(Map<String, dynamic> json) {
    _screenTime = json['screenTime'] != null ?  ScreenTime.fromJson(json['screenTime']) : null;
    _freeTime = json['freeTime'] != null ?  FreeTime.fromJson(json['freeTime']) : null;
    if (json['devices'] != null) {
      _devices = <Devices>[];
      json['devices'].forEach((v) { _devices!.add( Devices.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    if (_screenTime != null) {
      data['screenTime'] = _screenTime!.toJson();
    }
    if (_freeTime != null) {
      data['freeTime'] = _freeTime!.toJson();
    }
    if (_devices != null) {
      data['devices'] = _devices!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ScreenTime {
  int? _class;
  int? _study;
  int? _free;
  int? _total;

  ScreenTime({int? classdata, int? study, int? free, int? total}) {
    if (classdata != null) {
      _class = classdata;
    }
    if (study != null) {
    _study = study;
    }
    if (free != null) {
    _free = free;
    }
    if (total != null) {
    _total = total;
    }
  }

  int? get classdata => _class;
  set classdata(int? classdata) => _class = classdata;
  int? get study => _study;
  set study(int? study) => _study = study;
  int? get free => _free;
  set free(int? free) => _free = free;
  int? get total => _total;
  set total(int? total) => _total = total;

  ScreenTime.fromJson(Map<String, dynamic> json) {
  _class = json['class'];
  _study = json['study'];
  _free = json['free'];
  _total = json['total'];
  }

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data =  Map<String, dynamic>();
  data['class'] = _class;
  data['study'] = _study;
  data['free'] = _free;
  data['total'] = _total;
  return data;
  }
}

class FreeTime {
  int? _limit;
  int? _usage;

  FreeTime({int? limit, int? usage}) {
    if (limit != null) {
      _limit = limit;
    }
    if (usage != null) {
      _usage = usage;
    }
  }

  int? get limit => _limit;
  set limit(int? limit) => _limit = limit;
  int? get usage => _usage;
  set usage(int? usage) => _usage = usage;

  FreeTime.fromJson(Map<String, dynamic> json) {
    _limit = json['limit'];
    _usage = json['usage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['limit'] = _limit;
    data['usage'] = _usage;
    return data;
  }
}

class Devices {
  String? _name;
  int? _usage;

  Devices({String? name, int? usage}) {
    if (name != null) {
      _name = name;
    }
    if (usage != null) {
      _usage = usage;
    }
  }

  String? get name => _name;
  set name(String? name) => _name = name;
  int? get usage => _usage;
  set usage(int? usage) => _usage = usage;

  Devices.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _usage = json['usage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['name'] = _name;
    data['usage'] = _usage;
    return data;
  }
}