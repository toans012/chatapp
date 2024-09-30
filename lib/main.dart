import 'package:chatapp/views/chat_page.dart';
import 'package:chatapp/views/home.dart';
import 'package:chatapp/views/phone_login.dart';
import 'package:chatapp/views/profile.dart';
import 'package:chatapp/views/update_profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App chat',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
     routes: {
      //'/':(context) => PhoneLogin(),
       '/':(context) => HomePage(),
       '/home': (context) => HomePage(),
       '/chat': (context) => ChatPage(),
       '/profile': (context) => ProfilePage(),
       '/update': (context) => UpdateProfile(),
     },
    );
  }
}

