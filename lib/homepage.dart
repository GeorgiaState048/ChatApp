import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'chatPage.dart';
import 'src/widgets.dart';
import 'src/authentication.dart';
import 'app_state.dart';
import 'adminMessages.dart';
import 'customer_messages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatPage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("Chats"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout_outlined),
            title: Text("Logout"),
          ),
        ],
      ),
    );
  }
}