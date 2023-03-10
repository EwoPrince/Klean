import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:klean/app/data/models/user_model.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class AuthRepository {
  
  static Future<UserCredential> login(String email, String password) async {
    final response = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return response;
  }

  static Future<UserCredential> Register(
      email, password, fullName, token) async {
    final response = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return response;
  }

  static Future<User?> updateProfile(age, intrest, gender, uid,) async {
    final userId = FirebaseAuth.instance.currentUser?.uid;

    FirebaseFirestore.instance.collection("users").doc(userId).update(
      {
        "age": age,
        "intrest": intrest,
        "gender": gender,
      },
    );
    // await _provider.updateProfile(age, weight, height, intrest, goal, achiveGoal, fitnessLevel, gender, uid);

    // return  response;
  }

  static Future<Stream<User?>> updateProfilePics(url, uid) async {
    final response = FirebaseAuth.instance.userChanges();
    // await _provider.updateProfilepics(url, uid );
    return response;
  }

  static Future<User?> getUser() async {
    final response = FirebaseAuth.instance.currentUser;
    return response;
  }
}
