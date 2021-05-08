import 'package:chatty_app/screens/chatlistscreen.dart';
import 'package:chatty_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chatty App',
        theme: ThemeData(
            scaffoldBackgroundColor: babyblue,
            primarySwatch: Colors.blue,
            // Mengubah fonts default flutter
            textTheme:
                GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        home: ChatListScreen());
  }
}
