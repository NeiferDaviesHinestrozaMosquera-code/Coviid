import 'package:coviidapp/Screens/Menu/menu.dart';
import 'package:coviidapp/Screens/auth_page.dart';
import 'package:coviidapp/Screens/home_page.dart';
import 'package:coviidapp/Widgets/login_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Something went wrong!'));
            } else if (snapshot.hasData) {
              return MenuScreen();
            } else {
              return AuthPage();
            }
          },
        ),
      );
}