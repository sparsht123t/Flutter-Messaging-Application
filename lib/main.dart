import 'package:chat_app1/helper/authenticate.dart';
import 'package:chat_app1/views/chatrooms.dart';
import 'package:chat_app1/views/sign_in.dart';
import 'package:chat_app1/views/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterChat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff145C9E),
        scaffoldBackgroundColor: Color(0xff1F1F1F),
        accentColor: Color(0xff007EF4),
        fontFamily: "OverpassRegular",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  ChatRoom(),
      // userIsLoggedIn != null ?  userIsLoggedIn ? ChatRoom() : Authenticate()
      //     : Container(
      //   child: Center(
      //     child: Authenticate(),
    );      
   
  }
}

