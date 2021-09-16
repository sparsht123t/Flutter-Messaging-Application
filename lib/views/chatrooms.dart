import 'package:chat_app1/helper/authenticate.dart';
import 'package:chat_app1/helper/constants.dart';
import 'package:chat_app1/helper/helperfunction.dart';
import 'package:chat_app1/services/auth.dart';
import 'package:chat_app1/services/database.dart';
import 'package:chat_app1/views/search.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  AuthService authMethod = new AuthService();

  //                                                 //

  @override
  void initState() {
    getUserInfogetChats();
    super.initState();
  }

  getUserInfogetChats() async {
    Constants.myName = await HelperFunctions.getUserNameSharedPreference();
    // DatabaseMethods().getUserChats(Constants.myName).then((snapshots) {
    //   setState(() {
    //     chatRooms = snapshots;
    //     print(
    //         "we got the data + ${chatRooms.toString()} this is name  ${Constants.myName}");
    //   });
    // });
  }


 //                                                 //




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo.png",
          height: 40,
        ),
        elevation: 0.0,
        centerTitle: false,
        actions: [
          GestureDetector(
            onTap: () {
              authMethod.signOut();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Authenticate(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Icon(
                Icons.exit_to_app,
              ),
            ),
            
          ),
        ],
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Search()));
        },
      ),
    );
  }
}
