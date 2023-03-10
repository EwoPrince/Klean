import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:klean/app/module/auth_module/repository.dart';
import '../../../routes/pages.dart';
import '../../core/p.dart';
import '../../data/models/user_model.dart';
import '../../data/provider/firebase_service.dart';

enum Gender { MALE, FEMALE }

class AuthController extends GetxController {
  Rx<Gender> gender = Gender.MALE.obs;
  RxString image = ''.obs;
  String imageurl = '';
  RxBool loadingUpload = false.obs;
  final picker = ImagePicker();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cpassword = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController otp = TextEditingController();
  Map<String, dynamic>? userData;
  RxInt age = 20.obs;
  String weight = '';
  RxString height = ''.obs;
  String goal = '';
  String achiveGoal = '';
  String fitnessLevel = '';
  List intrest = [];
  Rx<UserModel>? userModel;
  RxBool loading = false.obs;
//  String? get firebaseCurrentUserId => FirebaseAuth.instance.currentUser?.uid;


  changeGender({required Gender widget}) {
    gender.value = widget;
  }


  void loginController() async {
    loading.value = true;
    await AuthRepository.login(email.text, password.text).then((value) async {
//      userModel = UserModel.fromJson(value.obs).obs;
      var userId = FirebaseAuth.instance.currentUser?.uid;
      var cred = await FirebaseFirestore.instance
          .collection("users")
          .doc(userId)
          .get();
      loading.value = false;
      userModel = UserModel.fromData(cred.data()).obs;
      userModel?.value = UserModel.fromData(cred.data());

      if (userModel!.value.gender == '') {
        Get.toNamed(Routes.PROFILEINPUT);
      } else {
        Get.offAllNamed(Routes.DASHBOARD);
      }
    }).onError((error, stackTrace) {
      Get.snackbar(error.toString(), stackTrace.toString(),
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: const Duration(seconds: 5));
    });
  }


  void registerController() async {
    loading.value = true;
    final fcmToken = await FirebaseMessaging.instance.getToken();

    AuthRepository.Register(email.text, password.text, fullName.text, fcmToken)
        .then((value) async {
      var userId = FirebaseAuth.instance.currentUser?.uid;
      await FirebaseFirestore.instance.collection("users").doc(userId).set(
        {
          "fullName": fullName.text,
          "email": email.text,
          "id": fcmToken,
          "age": 20,
          "intrest": 'intrest',
          "gender": 'gender',
        },
      );
      var cred = await FirebaseFirestore.instance
          .collection("users")
          .doc(userId)
          .get();
          loading.value = false;
      userModel = UserModel.fromData(cred.data()).obs;
      Get.toNamed(Routes.PROFILEINPUT);
    }).onError((error, stackTrace) {
      Get.snackbar(error.toString(), stackTrace.toString(),
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: const Duration(seconds: 5));
    });
  }


  void updateProfileController() async {
    String _gender = gender == Gender.MALE ? 'Male' : 'Female';
    List _intrest = [];
    for (var element in intrest) {
      if (element['state'] == true) {
        _intrest.add(element['title']);
      }
    }
    loading.value = true;
    var userId = FirebaseAuth.instance.currentUser?.uid;
    await AuthRepository.updateProfile(
            age.value,
            _intrest,
            _gender,
            userId ).then((value) async { 
          var cred = await FirebaseFirestore.instance
          .collection("users")
          .doc(userId)
          .get();
            userModel = UserModel.fromData(cred.data()).obs;
      userModel?.value = UserModel.fromData(cred.data());
  })
        .onError((error, stackTrace) {
      Get.snackbar(error.toString(), stackTrace.toString(),
          backgroundColor: Colors.red,
          colorText: Colors.white,
          duration: const Duration(seconds: 5));
    });
    loading.value = false;
    Get.toNamed(Routes.DASHBOARD);
  }


  void userSignOut() async {
    FirebaseAuth.instance.signOut();
    Get.back();
  }


  void getUserController() async {
    loading.value = true;
    var userId = FirebaseAuth.instance.currentUser?.uid;
    var cred = await FirebaseFirestore.instance
          .collection("users")
          .doc(userId)
          .get();
            userModel = UserModel.fromData(cred.data()).obs;
      userModel?.value = UserModel.fromData(cred.data());
    await AuthRepository.getUser();
    loading.value = false;
  }

  // void getUserControllers() async {
  //   loading.value = true;

  //   _responses = (await AuthRepository.getUser()) as Responses;
  //   loading.value = false;

  //   if (_responses.statusCode == 200) {
  //     print('i was here');

  //     userModel = UserModel.fromJson(_responses.data[0]).obs;
  //   } else {
  //     userSignOut();
  //     Get.snackbar(_responses.statusCode.toString(), _responses.message!,
  //         backgroundColor: Colors.red,
  //         colorText: Colors.white,
  //         duration: Duration(seconds: 5));
  //   }
  // }

  // void updateProfilePicsController() async {
  //   loading.value = true;

  //   _responses =
  //       (await AuthRepository.updateProfilePics(imageurl, userModel!.value.id))
  //           as Responses;
  //   loading.value = false;
  //   print(_responses.data);
  //   if (_responses.statusCode == 200) {
  //     userModel!.value = UserModel.fromJson(_responses.data);
  //   } else {
  //     Get.snackbar(_responses.statusCode.toString(), _responses.message!,
  //         backgroundColor: Colors.red,
  //         colorText: Colors.white,
  //         duration: Duration(seconds: 5));
  //   }
  // }

  chooseImageCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    image.value = pickedFile!.path;
    uploadImages();
  }

  uploadImages() async {
    loadingUpload.value = true;
    try {
      imageurl = await uploadProfile(File(image.value));
      loadingUpload.value = false;
      //   updateProfilePicsController();
    } catch (e) {
      loadingUpload.value = false;
    }
  //  print(imageurl);
  }
}
