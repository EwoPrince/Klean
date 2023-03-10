class UserModel {
  String? firstName;
  String? email;
  String? id;
  List? interest;
  String? gender;
  int? age;

  UserModel({
    this.age,
    this.email,
    this.firstName,
    this.gender,
    this.interest,
    this.id,
  });

  UserModel.fromData(Map<String, dynamic>? dataMap)
      : firstName = dataMap!['fullName'],
        email = dataMap['email'],
        id = dataMap['id'],
        interest = dataMap['interest'],
        gender = dataMap['gender'],
        age = dataMap['age'];

  Map<String, dynamic> toData() {
    return {
      'email': email,
      'firstName': firstName,
      'id': id,
      'interest': interest,
      'gender': gender,
      'age': age,
    };
  }
}
