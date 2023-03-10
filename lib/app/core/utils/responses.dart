class Responses {
  String? _message;
  int? _statusCode;
  var _data;



  String? get message => _message;

  get data => _data;
  int? get statusCode => _statusCode;

  Responses({  String? message, int ? statusCode,    data}) {
    _message = message;
    _data = data;
    _statusCode = statusCode;
  }
  Responses.fromJson(dynamic json) {

    _message = json['message'] ;
    _data  = json['data'] ;
    _statusCode =  json['status'];
  }



}
