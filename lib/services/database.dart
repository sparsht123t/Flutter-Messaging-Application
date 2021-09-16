import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  
  Future<void> addUserInfo(userData) async {
    FirebaseFirestore.instance
        .collection("users")
        .add(userData)
        .catchError((e) {
      print(e.toString());
    });
  }

  getUserInfo(String email) async {
    return FirebaseFirestore.instance
        .collection("users")
        .where("userEmail", isEqualTo: email)
        .get()
        .catchError((onError) {
      print(onError.toString());
    });
  }

  getUserByName(String searchField) {
    return FirebaseFirestore.instance
        .collection("users")
        .where('userName', isEqualTo: searchField)
        .get()
        .catchError((onError) {
      print(onError.toString());
    });
  }
}
