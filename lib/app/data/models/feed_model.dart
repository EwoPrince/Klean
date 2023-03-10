
class FeedModel {
  String? _feedDescription;

  String? _feedImage;
  String? _profileUrl;

  String? _userId;
  String? _fullName;

  var _date;
  String? _id;
  List? _comments;
  List? _likes;






  FeedModel.fromJson(dynamic json) {
    _likes = json['likes']?? [];
    _comments = json['comments']?? [];
    _id = json['id']??'';
    _date = json['date']??'';
    _fullName = json['fullName']??'';
    _userId = json['userId']??'';
    _feedImage = json['feedImage']??'';
    _feedDescription = json['feedDescription']??'';
    _profileUrl = json['profileUrl']?? '';
  }

  List ? get likes => _likes;

  List ? get comments => _comments;

  String? get id => _id;

   get date => _date;

  String? get fullName => _fullName;

  String ?get userId => _userId;

  String ?get profileUrl => _profileUrl;

  String? get feedImage => _feedImage;

  String? get feedDescription => _feedDescription;
}
