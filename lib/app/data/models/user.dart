import 'dart:convert';

import 'package:flutter/foundation.dart';

class User {
  final String name;
  final String username;
  final String email;
  final String phone;
  final String gender;
  final String location;
  final Map<String, dynamic> bankDetails;

  User({
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.gender,
    required this.location,
    required this.bankDetails,
  });

  User copyWith({
    String? name,
    String? username,
    String? email,
    String? phone,
    String? gender,
    String? location,
    Map<String, dynamic>? bankDetails,
  }) {
    return User(
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      gender: gender ?? this.gender,
      location: location ?? this.location,
      bankDetails: bankDetails ?? this.bankDetails,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'username': username,
      'email': email,
      'phone': phone,
      'gender': gender,
      'location': location,
      'bankDetails': bankDetails,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      gender: map['gender'] ?? '',
      location: map['location'] ?? '',
      bankDetails: Map<String, dynamic>.from(map['bankDetails']),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(name: $name, username: $username, email: $email, phone: $phone, gender: $gender, location: $location, bankDetails: $bankDetails, )';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.name == name &&
        other.username == username &&
        other.email == email &&
        other.phone == phone &&
        other.gender == gender &&
        other.location == location &&
        mapEquals(other.bankDetails, bankDetails);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        username.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        gender.hashCode ^
        location.hashCode ^
        bankDetails.hashCode;
  }

  void notifyListeners() {}
}
